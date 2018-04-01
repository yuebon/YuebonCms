using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Data;
using System.Collections.Generic;
using YueBonSoft.Common;
using System.Configuration;
namespace YueBonSoft.BLL
{
    /// <summary>
    /// 手机短信
    /// </summary>
    public partial class sms_message
    {
        private readonly Model.sysconfig sysConfig = new BLL.sysconfig().loadConfig();//获得站点配置信息
        public sms_message()
        { }

        /// <summary>
        /// 检查账户信息是否正确
        /// </summary>
        /// <returns></returns>
        public bool Exists()
        {
            if (string.IsNullOrEmpty(sysConfig.smsapiurl) || string.IsNullOrEmpty(sysConfig.smsusername) || string.IsNullOrEmpty(sysConfig.smspassword))
            {
                return false;
            }
            return true;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="mobile">短信接收端手机号码集合，用英文逗号分开，每批发送的手机号数量不得超过100个</param>
        /// <param name="templateId">模板Id</param>
        /// <param name="data">可选字段 内容数据，用于替换模板中{序号}</param>
        public bool SendSMS(string mobile, string templateId, string[] data)
        {
            CCPRestSDK api = new CCPRestSDK();
            string SMSAcountSid = "8aaf070858cd982e0158d723732b0644";
            string SMSAuthToken = "ae968441a62e4e929cb02f85046b65df";
            string SMSRestUrl = "app.cloopen.com";
            string SMSAppID = "8aaf07086077a6e601607d907edc0316";
            //ip格式如下，不带https://
            bool isInit = api.init(SMSRestUrl, "8883");
            api.setAccount(SMSAcountSid, SMSAuthToken);
            api.setAppId(SMSAppID);
            string ret = string.Empty;
            try
            {
                if (isInit)
                {
                    Dictionary<string, object> retData = api.SendTemplateSMS(mobile, templateId, data);
                    ret = getDictionaryData(retData);
                    
                    if (ret.IndexOf("000000") > 0)
                    {
                         return true;
                    }
                    else
                    {
                        //sMSSendLogInfo.SendStutas = "失败";

                        return false;
                    }
                    //LogTextHelper.Info(ret);
                }
                else
                {
                    //LogTextHelper.Info("SMS短信接口初始化失败");
                    return false;
                }
            }
            catch (Exception exc)
            {
                //LogTextHelper.Error("SMS短信接口异常：" + exc.Message);
                return false;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        private string getDictionaryData(Dictionary<string, object> data)
        {
            string ret = null;
            foreach (KeyValuePair<string, object> item in data)
            {
                if (item.Value != null && item.Value.GetType() == typeof(Dictionary<string, object>))
                {
                    ret += item.Key.ToString() + "={";
                    ret += getDictionaryData((Dictionary<string, object>)item.Value);
                    ret += "};";
                }
                else
                {
                    ret += item.Key.ToString() + "=" + (item.Value == null ? "null" : item.Value.ToString()) + ";";

                }
            }
            return ret;
        }
        /// <summary>
        /// 发送手机短信
        /// </summary>
        /// <param name="mobiles">手机号码，以英文“,”逗号分隔开</param>
        /// <param name="content">短信内容</param>
        /// <param name="pass">短信通道1验证码通道2广告通道</param>
        /// <param name="msg">返回提示信息</param>
        /// <returns>bool</returns>
        public bool Send(string mobiles, string content, int pass, out string msg)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                msg = "短信配置参数有误，请完善后再提交！";
                return false;
            }
            //检查手机号码，如果超过2000则分批发送
            int sucCount = 0; //成功提交数量
            string errorMsg = string.Empty; //错误消息
            string[] oldMobileArr = mobiles.Split(',');
            int batch = oldMobileArr.Length / 2000 + 1; //2000条为一批，求出分多少批

            for (int i = 0; i < batch; i++)
            {
                StringBuilder sb = new StringBuilder();
                int sendCount = 0; //发送数量
                int maxLenght = (i + 1) * 2000; //循环最大的数

                //检测号码，忽略不合格的，重新组合
                for (int j = 0; j < oldMobileArr.Length && j < maxLenght; j++)
                {
                    int arrNum = j + (i * 2000);
                    string pattern = @"^1\d{10}$";
                    string mobile = oldMobileArr[arrNum].Trim();
                    Regex r = new Regex(pattern, RegexOptions.IgnoreCase); //正则表达式实例，不区分大小写
                    Match m = r.Match(mobile); //搜索匹配项
                    if (m != null)
                    {
                        sendCount++;
                        sb.Append(mobile + ",");
                    }
                }

                //发送短信
                if (sb.ToString().Length > 0)
                {
                    try
                    {
                        string result = Utils.HttpPost(sysConfig.smsapiurl,
                            "cmd=tx&pass=" + pass + "&uid=" + sysConfig.smsusername + "&pwd=" + sysConfig.smspassword + "&mobile=" + Utils.DelLastComma(sb.ToString()) + "&encode=utf8&content=" + Utils.UrlEncode(content));
                        string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                        if (strArr[0] != "100")
                        {
                            errorMsg = "提交失败，错误提示：" + strArr[1];
                            continue;
                        }
                        sucCount += sendCount; //成功数量
                    }
                    catch
                    {
                        //没有动作
                    }
                }
            }

            //返回状态
            if (sucCount > 0)
            {
                msg = "成功提交" + sucCount + "条，失败" + (oldMobileArr.Length - sucCount) + "条";
                return true;
            }
            msg = errorMsg;
            return false;
        }

        /// <summary>
        /// 查询账户剩余短信数量
        /// </summary>
        public int GetAccountQuantity(out string code)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                code = "115";
                return 0;
            }
            try
            {
                string result = Utils.HttpPost(sysConfig.smsapiurl, "cmd=mm&uid=" + sysConfig.smsusername + "&pwd=" + sysConfig.smspassword);
                string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                if (strArr[0] != "100")
                {
                    code = strArr[0];
                    return 0;
                }
                code = strArr[0];
                return Utils.StrToInt(strArr[1], 0);
            }
            catch
            {
                code = "115";
                return 0;
            }
        }

        /// <summary>
        /// 查询已发送数量
        /// </summary>
        public int GetSendQuantity(out string code)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                code = "115";
                return 0;
            }
            try
            {
                string result = Utils.HttpPost(sysConfig.smsapiurl, "cmd=se&uid=" + sysConfig.smsusername + "&pwd=" + sysConfig.smspassword);
                string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                if (strArr[0] != "100")
                {
                    code = strArr[0];
                    return 0;
                }
                code = strArr[0];
                return Utils.StrToInt(strArr[1], 0);
            }
            catch
            {
                code = "115";
                return 0;
            }
        }

    }
}

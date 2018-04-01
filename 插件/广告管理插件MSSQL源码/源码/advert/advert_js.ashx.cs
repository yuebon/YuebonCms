using System;
using System.Text;
using System.Data;
using System.Web;
using YueBonSoft.Common;

namespace YueBonSoft.Web.Plugin.Advert
{
    public class advert_js : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int aid = DTRequest.GetQueryInt("id");

            //获得广告位的ID
            if (aid < 1)
            {
                context.Response.Write("document.write('错误提示，请勿提交非法字符！');");
                return;
            }

            //检查广告位是否存在
            BLL.advert abll = new BLL.advert();
            if (!abll.Exists(aid))
            {
                context.Response.Write("document.write('错误提示，该广告位不存在！');");
                return;
            }

            //取得该广告位详细信息
            Model.advert aModel = abll.GetModel(aid);

            //输出该广告位下的广告条,不显示未开始、过期、暂停广告
            BLL.advert_banner bbll = new BLL.advert_banner();
            DataSet ds = bbll.GetList(10,"is_lock=0 and datediff(d,start_time,getdate())>=0 and datediff(d,end_time,getdate())<=0 and aid=" + aid, "sort_id desc");
            if (ds.Tables[0].Rows.Count < 1)
            {
                context.Response.Write("document.write('该广告位下暂无广告内容');");
                return;
            }

            //=================判断广告位类别,输出广告条======================

            //新增，取得站点配置信息
            YueBonSoft.Model.sysconfig sysConfig = new YueBonSoft.BLL.sysconfig().loadConfig();

            switch (aModel.type)
            {
                case 1: //文字
                    context.Response.Write("document.write('<ul>');\n");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        //如果超出限制广告数量，则退出循环
                        if (i >= aModel.view_num)
                            break;
                        DataRow dr = ds.Tables[0].Rows[i];
                        context.Response.Write("document.write('<li>');");
                        context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" target=\"" + aModel.target + "\" href=\"" + dr["link_url"] + "\">" + dr["title"] + "</a>');");
                        context.Response.Write("document.write('</li>');\n");
                    }
                    context.Response.Write("document.write('</ul>');\n");
                    break;
                case 2: //图片
                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];
                        context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" target=\"" + aModel.target + "\" href=\"" + dr["link_url"] + "\">');");
                        if (aModel.view_width == 0 && aModel.view_height == 0)
                        {
                            context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\"  border=0 />');");
                        }
                        else
                        {
                            context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\" width=" + aModel.view_width + " height=" + aModel.view_height + " border=0 />');");
                        }
                        context.Response.Write("document.write('</a>');");
                    }
                    else
                    {
                        context.Response.Write("document.write('<ul>');\n");
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            //如果超出限制广告数量，则退出循环
                            if (i >= aModel.view_num)
                                break;
                            DataRow dr = ds.Tables[0].Rows[i];
                            context.Response.Write("document.write('<li>');");
                            context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" target=\"" + aModel.target + "\" href=\"" + dr["link_url"] + "\">');");
                            context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" target=\"" + aModel.target + "\" href=\"" + dr["link_url"] + "\">');");
                            if (aModel.view_width == 0 && aModel.view_height == 0)
                            {
                                context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\"  border=0 />');");
                            }
                            else
                            {
                                context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\" width=" + aModel.view_width + " height=" + aModel.view_height + " border=0 />');");

                            }
                            context.Response.Write("document.write('</a>');\n");
                            context.Response.Write("document.write('</li>');\n");
                        }
                        context.Response.Write("document.write('</ul>');\n");
                    }
                    break;
                case 3: //幻灯片
                    context.Response.Write("document.write('<link rel=\"stylesheet\" type=\"text/css\" href=\"" + sysConfig.webpath + "plugins/advert/css/focus.css\" />');\n");
                    context.Response.Write("document.write('<div class=\"focus-box\">');\n");
                    context.Response.Write("document.write('<ul class=\"slides\">');\n");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        //如果超出限制广告数量，则退出循环
                        if (i >= aModel.view_num)
                            break;
                        DataRow dr = ds.Tables[0].Rows[i];
                        context.Response.Write("document.write('<li>');\n");
                        context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" href=\"" + dr["link_url"] + "\">');\n");
                        context.Response.Write("document.write('<span class=\"note-bg\"></span>');\n");
                        context.Response.Write("document.write('<span class=\"note-txt\">" + dr["title"] + "</span>');\n");
                        context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\" />');\n");
                        context.Response.Write("document.write('</a>');\n");
                        context.Response.Write("document.write('</li>');\n");
                    }
                    context.Response.Write("document.write('</ul>');\n");
                    context.Response.Write("document.write('</div>');\n");
                    context.Response.Write("$.getScript('" + sysConfig.webpath + "plugins/advert/js/jquery.flexslider-min.js',function(){\n");
                    context.Response.Write("$('.focus-box').flexslider({\n");
                    context.Response.Write("directionNav:false,\n");
                    context.Response.Write("pauseOnAction:false\n");
                    context.Response.Write("});\n");
                    context.Response.Write("});\n");
                    break;
                case 4: //动画
                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];
                        context.Response.Write("document.write('<object classid=\"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\" width=\"" + aModel.view_width + "\" height=\"" + aModel.view_height + "\">');\n");
                        context.Response.Write("document.write('<param name=\"movie\" value=\"" + dr["file_path"] + "\">');\n");
                        context.Response.Write("document.write('<param name=\"quality\" value=\"high\">');\n");
                        context.Response.Write("document.write('<param name=\"wmode\" value=\"transparent\">');\n");
                        context.Response.Write("document.write('<param name=\"menu\" value=\"false\">');\n");
                        context.Response.Write("document.write('<embed src=\"" + dr["file_path"] + "\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"" + aModel.view_width + "\" height=\"" + aModel.view_height + "\" quality=\"High\" wmode=\"transparent\">');\n");
                        context.Response.Write("document.write('</embed>');\n");
                        context.Response.Write("document.write('</object>');\n");
                    }
                    else
                    {
                        context.Response.Write("document.write('<ul>');\n");
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            //如果超出限制广告数量，则退出循环
                            if (i >= aModel.view_num)
                                break;
                            DataRow dr = ds.Tables[0].Rows[i];
                            context.Response.Write("document.write('<li>');");
                            context.Response.Write("document.write('<object classid=\"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\" width=\"" + aModel.view_width + "\" height=\"" + aModel.view_height + "\">');\n");
                            context.Response.Write("document.write('<param name=\"movie\" value=\"" + dr["file_path"] + "\">');\n");
                            context.Response.Write("document.write('<param name=\"quality\" value=\"high\">');\n");
                            context.Response.Write("document.write('<param name=\"wmode\" value=\"transparent\">');\n");
                            context.Response.Write("document.write('<param name=\"menu\" value=\"false\">');\n");
                            context.Response.Write("document.write('<embed src=\"" + dr["file_path"] + "\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"" + aModel.view_width + "\" height=\"" + aModel.view_height + "\" quality=\"High\" wmode=\"transparent\">');\n");
                            context.Response.Write("document.write('</embed>');\n");
                            context.Response.Write("document.write('</object>');\n");
                            context.Response.Write("document.write('</li>');\n");
                        }
                        context.Response.Write("document.write('</ul>');\n");
                    }
                    break;
                case 5://视频
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        //如果超出限制广告数量，则退出循环
                        if (i >= 1)
                            break;
                        DataRow dr = ds.Tables[0].Rows[i];
                        string fileExt = dr["file_path"].ToString().Substring(dr["file_path"].ToString().LastIndexOf(".") + 1);
                        if (fileExt.ToLower() == "flv")
                        {
                            context.Response.Write("document.write('<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\" width=" + aModel.view_width + " height=" + aModel.view_height + " viewastext>');\n");
                            context.Response.Write("document.write('<param name=\"movie\" value=\"" + sysConfig.webpath + "plugins/advert/player.swf\" />');\n");
                            context.Response.Write("document.write('<param name=\"quality\" value=\"high\" />');\n");
                            context.Response.Write("document.write('<param name=\"allowFullScreen\" value=\"true\" />');\n");
                            context.Response.Write("document.write('<param name=\"FlashVars\" value=\"vcastr_file=" + dr["file_path"].ToString() + "&LogoText=www.auto.cn&BarTransparent=30&BarColor=0xffffff&IsAutoPlay=1&IsContinue=1\" />');\n");
                            context.Response.Write("document.write('</object>');\n");
                        }
                        else
                        {
                            context.Response.Write("document.write('<video src=\"" + dr["file_path"].ToString() + "\" width=" + aModel.view_width + " height=" + aModel.view_height + " autoplay=\"autoplay\" controls=\"controls\">');\n");
                            context.Response.Write("document.write('Your browser does not support the video tag.');\n");
                            context.Response.Write("document.write('</video>')\n");
                        }
                        
                    }
                    break;
                case 6://代码
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        //如果超出限制广告数量，则退出循环
                        if (i >= 1)
                            break;
                        DataRow dr = ds.Tables[0].Rows[i];
                        StringBuilder sb = new StringBuilder(dr["content"].ToString());
                        sb.Replace("&lt;", "<");
                        sb.Replace("&gt;", ">");
                        sb.Replace("\"", "'");
                        context.Response.Write("document.write(\"" + sb.ToString() + "\")");
                    }
                    break;
                case 7: //幻灯片
                    context.Response.Write("document.write('<div class=\"swiper-container\" dir=\"rtl\">');\n");
                    context.Response.Write("document.write('<div class=\"swiper-wrapper\">');\n");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        //如果超出限制广告数量，则退出循环
                        if (i >= aModel.view_num)
                            break;
                        DataRow dr = ds.Tables[0].Rows[i];
                        context.Response.Write("document.write('<div class=\"swiper-slide\">');\n");
                        context.Response.Write("document.write('<a title=\"" + dr["title"] + "\" href=\"" + dr["link_url"] + "\">');\n");
                        context.Response.Write("document.write('<img src=\"" + dr["file_path"] + "\" />');\n");
                        context.Response.Write("document.write('</a>');\n");
                        context.Response.Write("document.write('</div>');\n");
                    }
                    context.Response.Write("document.write('</div>');\n");
                    context.Response.Write("document.write('<div class=\"swiper-pagination\"></div>');\n");
                    context.Response.Write("document.write('<div class=\"swiper-button-prev\"></div>');\n");
                    context.Response.Write("document.write('<div class=\"swiper-button-next\"></div>');\n");
                    context.Response.Write("document.write('</div>');\n");
                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}

using System;
using System.Xml.Serialization;
using System.Runtime.Serialization;

namespace YueBonSoft.Model
{
    [Serializable]
    public class ProvinceInfo
    {    
        #region Field Members

        private int m_ID = 0;         
        private string m_ProvinceName = "";         

        #endregion

        #region Property Members

        /// <summary>
        /// ʡ��ID
        /// </summary>
        public virtual int ID
        {
            get
            {
                return this.m_ID;
            }
            set
            {
                this.m_ID = value;
            }
        }

        /// <summary>
        /// ʡ������
        /// </summary>
        public virtual string ProvinceName
        {
            get
            {
                return this.m_ProvinceName;
            }
            set
            {
                this.m_ProvinceName = value;
            }
        }


        #endregion

    }
}
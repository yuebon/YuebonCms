using System;
using System.Xml.Serialization;
using System.Runtime.Serialization;

namespace YueBonSoft.Model
{
    [Serializable]
    public class DistrictInfo 
    {    
        #region Field Members

        private int m_ID = 0;         
        private string m_DistrictName;
        private int m_CityID = 0;         

        #endregion

        #region Property Members

        /// <summary>
        /// ������ID
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
        /// ����������
        /// </summary>
        public virtual string DistrictName
        {
            get
            {
                return this.m_DistrictName;
            }
            set
            {
                this.m_DistrictName = value;
            }
        }

        /// <summary>
        /// ��������ID
        /// </summary>
        public virtual int CityID
        {
            get
            {
                return this.m_CityID;
            }
            set
            {
                this.m_CityID = value;
            }
        }


        #endregion

    }
}
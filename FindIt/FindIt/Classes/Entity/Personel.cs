using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class Personel : IEntity
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string ad;

        public string Ad
        {
            get { return ad; }
            set { ad = value; }
        }
        private string soyad;

        public string Soyad
        {
            get { return soyad; }
            set { soyad = value; }
        }
        private string tc;

        public string Tc
        {
            get { return tc; }
            set { tc = value; }
        }
        private string parola;

        public string Parola
        {
            get { return parola; }
            set { parola = value; }
        }
        private PersonelStatu statuId;

        public PersonelStatu StatuId
        {
            get { return statuId; }
            set { statuId = value; }
        }
        public Personel()
        {
            this.Id = 0;
            this.Ad = "";
            this.Soyad = "";
            this.Tc = "";
            this.Parola = "";
            this.StatuId = new PersonelStatu();
        }
    }
}

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class Raflar : IEntity
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
        private AltKategori altKategoriId;

        public AltKategori AltKategoriId
        {
            get { return altKategoriId; }
            set { altKategoriId = value; }
        }
        private string sekil;

        public string Sekil
        {
            get { return sekil; }
            set { sekil = value; }
        }

        public Raflar()
        {
            this.Id = 0;
            this.AltKategoriId = new AltKategori();
            this.Ad = "";
            this.Sekil = "";
        }
    }
}

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class AltKategori : IEntity
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
        private Kategori kategoriId;

        public Kategori KategoriId
        {
            get { return kategoriId; }
            set { kategoriId = value; }
        }
        public AltKategori()
        {
            this.Id = 0;
            this.KategoriId = new Kategori();
            this.Ad = "";
        }
    }
}

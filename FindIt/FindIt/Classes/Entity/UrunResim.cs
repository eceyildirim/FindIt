using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class UrunResim : IEntity
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string yol;

        public string Yol
        {
            get { return yol; }
            set { yol = value; }
        }
        private Urun urunId;

        public Urun UrunId
        {
            get { return urunId; }
            set { urunId = value; }
        }
        public UrunResim()
        {
            this.Id = 0;
            this.Yol = "";
            this.UrunId = new Urun();
        }
    }
}

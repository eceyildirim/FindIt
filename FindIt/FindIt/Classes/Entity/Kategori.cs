using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class Kategori : IEntity
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
        public Kategori()
        {
            this.Id = 0;
            this.Ad = "";
        }
    }
}

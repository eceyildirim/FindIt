using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class Harita : IEntity
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string harita;

        public string Harita1
        {
            get { return harita; }
            set { harita = value; }
        }

        public Harita()
        {
            this.Id = 0;
            this.Harita1 = "";
        }
    }
}

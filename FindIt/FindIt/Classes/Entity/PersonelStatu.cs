using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class PersonelStatu : IEntity
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string statu;

        public string Statu
        {
            get { return statu; }
            set { statu = value; }
        }
        public PersonelStatu()
        {
            this.Id = 0;
            this.Statu = "";
        }
    }
}

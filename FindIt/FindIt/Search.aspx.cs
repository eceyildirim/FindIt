using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class Search : System.Web.UI.Page
    {
        public string search = String.Empty; //input içinde name="search" yazdığım için burdaki değişken adı aynı olmalı
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string arama = Request.Params["search"] != null ? Request.Params["search"].ToString() : String.Empty;
            //Burada ise Request.Params ile search'ü aratıyorum. Boş değilse içindeki değeri alıp ToString() yapıyorum. Boş ise boş string atıyorum.
            Response.Redirect("List.aspx?Search="+arama+"");
        }
    }
}
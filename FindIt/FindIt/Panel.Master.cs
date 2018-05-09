using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class Panel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User();
        }

        private void User()
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            if (cookie == null)
            {
                Response.Redirect("loginSignup.aspx");
            }
            else
            {
                if (Convert.ToInt16(cookie["userStatu"]) != 1)
                {
                    Response.Redirect("loginSignup.aspx");
                }
            }
        }
    }
}
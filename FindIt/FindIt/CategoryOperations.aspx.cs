using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class CategoryOperations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategoryAdd_Click(object sender, EventArgs e)
        {
            Kategori k = new Kategori();
            k.Ad = txtCategoryName.Text;
            KategoriDb kdb = new KategoriDb();
            try
            {
                kdb.Insert(k);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert("+hata+")</script>");
            }
            Response.Redirect(Request.RawUrl);
        }
    }
}
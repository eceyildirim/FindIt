using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class CategoryOperations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryListShow();
        }

        private void CategoryListShow()
        {
            if (!IsPostBack)
            {
                KategoriDb db = new KategoriDb();
                DropDownListCategories.DataSource = db.CategoriesShow();
                DropDownListCategories.DataValueField = "Kategori_ID";
                DropDownListCategories.DataTextField = "Kategori_Ad";
                DropDownListCategories.DataBind();

                DropDownListCategoryforSubCategory.DataSource = db.CategoriesShow();
                DropDownListCategoryforSubCategory.DataValueField = "Kategori_ID";
                DropDownListCategoryforSubCategory.DataTextField = "Kategori_Ad";
                DropDownListCategoryforSubCategory.DataBind();

                DropDownListCategorySelect.DataSource = db.CategoriesShow();
                DropDownListCategorySelect.DataValueField = "Kategori_ID";
                DropDownListCategorySelect.DataTextField = "Kategori_Ad";
                DropDownListCategorySelect.DataBind();
            }
        }

        protected void btnCategoryAdd_Click(object sender, EventArgs e)
        {
            Label_ErrorDelete.Text = "";
            Label_Error.Text = "";
            Kategori k = new Kategori();
            k.Ad = txtCategoryName.Text;
            KategoriDb kdb = new KategoriDb();
            try
            {
                kdb.Insert(k);
            }
            catch (Exception hata)
            {
                Label_Error.Visible = true;
                Label_Error.Text = hata.Message.ToString();
            }
            CategoryListShow();
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }

        protected void btnCategoryDelete_Click(object sender, EventArgs e)
        {
            Kategori k = new Kategori();
            k.Id =Convert.ToInt16(DropDownListCategories.SelectedItem.Value);
            KategoriDb db = new KategoriDb();
            try
            {
                db.Delete(k);
            }
            catch (Exception hata)
            {
                Label_ErrorDelete.Visible = true;
                Label_ErrorDelete.Text = hata.Message.ToString();
            }
            CategoryListShow();
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }

        protected void btnSubCategoryAdd_Click(object sender, EventArgs e)
        {
            Label_SubCategoryError.Text = "";
            AltKategori a = new AltKategori();
            a.Ad = txtAltKategori.Text;
            a.KategoriId.Id = Convert.ToInt16(DropDownListCategoryforSubCategory.SelectedItem.Value);
            AltKategoriDb db = new AltKategoriDb();
            try
            {
                db.Insert(a);
            }
            catch (Exception hata)
            {
                Label_SubCategoryError.Visible = true;
                Label_SubCategoryError.Text = hata.Message.ToString();
            }
            txtAltKategori.Text = "";
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }

        protected void btnSubCategoryDelete_Click(object sender, EventArgs e)
        {
            Label_SubCategoriesDeleteError.Text = "";
            AltKategori a = new AltKategori();
            a.Id = Convert.ToInt16(DropDownListSubCategoryDelete.SelectedItem.Value);
            AltKategoriDb db = new AltKategoriDb();
            try
            {
                db.Delete(a);
            }
            catch (Exception hata)
            {
                Label_SubCategoriesDeleteError.Visible = true;
                Label_SubCategoriesDeleteError.Text = hata.Message;
            }
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }

        protected void DropDownListCategorySelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            AltKategori a = new AltKategori();
            a.KategoriId.Id = Convert.ToInt16(DropDownListCategorySelect.SelectedItem.Value);
            AltKategoriDb db = new AltKategoriDb();
            DropDownListSubCategoryDelete.DataSource = db.GetSubCategory(a);
            DropDownListSubCategoryDelete.DataTextField = "AltKategori_Ad";
            DropDownListSubCategoryDelete.DataValueField = "AltKategori_ID";
            DropDownListSubCategoryDelete.DataBind();
        }
    }
}
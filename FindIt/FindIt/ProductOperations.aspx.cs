using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class ProductOperations : System.Web.UI.Page
    {
        public int cost = 0;
        public int stock = 0;
        public string features = String.Empty;
        public string singlePicture = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowCategory();
        }

        private void ShowCategory()
        {
            if (!IsPostBack)
            {
                KategoriDb db = new KategoriDb();
                DropDownListCategory.DataSource = db.CategoriesShow();
                DropDownListCategory.DataValueField = "Kategori_ID";
                DropDownListCategory.DataTextField = "Kategori_Ad";
                DropDownListCategory.DataBind();
            }
        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            cost = Request.Params["cost"] != null ? Convert.ToInt32(Request.Params["cost"]) : 0;
            stock = Request.Params["stock"] != null ? Convert.ToInt32(Request.Params["stock"]) : 0;
            features = Request.Params["features"] != null ? Request.Params["features"].ToString() : String.Empty;
            singlePicture = Request.Params["singlePicture"] != null ? Request.Params["singlePicture"].ToString() : String.Empty;
            Urun u = new Urun();
            UrunResim r = new UrunResim();
            u.PersonelId.Id = 1;
            u.Ad = txtUrunAd.Text;
            u.Barkod = txtBarkod.Text;
            u.Fiyat = cost;
            u.Stok = stock;
            u.AltKategoriId.Id = Convert.ToInt16(DropDownListSubCategory.SelectedItem.Value);
            u.Ozellikler = features;
            UrunDb udb = new UrunDb();
            try
            {
                udb.Insert(u);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('"+hata.Message.ToString()+"')</script>");
            }
            r.Yol = singlePicture;
        }

        protected void DropDownListCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            AltKategori a = new AltKategori();
            a.KategoriId.Id = Convert.ToInt16(DropDownListCategory.SelectedItem.Value);
            AltKategoriDb db = new AltKategoriDb();
            DropDownListSubCategory.DataSource = db.GetSubCategory(a);
            DropDownListSubCategory.DataTextField = "AltKategori_Ad";
            DropDownListSubCategory.DataValueField = "AltKategori_ID";
            DropDownListSubCategory.DataBind();
        }
    }
}
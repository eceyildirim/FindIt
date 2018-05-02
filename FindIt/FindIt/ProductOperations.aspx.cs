using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class ProductOperations : System.Web.UI.Page
    {
        public string singlePicture = String.Empty;
        public string search = String.Empty;
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
            singlePicture = Request.Params["singlePicture"] != null ? Request.Params["singlePicture"].ToString() : String.Empty;
            Urun u = new Urun();
            u.PersonelId.Id = 1;
            u.Ad = txtUrunAd.Text;
            u.Barkod = txtBarkod.Text;
            u.Fiyat = Convert.ToDecimal(txtCost.Text);
            u.Stok = Convert.ToInt16(txtStock.Text);
            u.AltKategoriId.Id = Convert.ToInt16(DropDownListSubCategory.SelectedItem.Value);
            u.Ozellikler = txtFeatures.Text;
            UrunDb udb = new UrunDb();
            try
            {
                udb.Insert(u);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
            }

            UrunResim r = new UrunResim();
            r.Yol = singlePicture;
            UrunResimDb rdb = new UrunResimDb();
            try
            {
                rdb.Insert(r);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
            }
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Label_SearchNotFound.Text = "";
            Urun u = new Urun();
            u.Barkod = search = Request.Params["search"] != null ? Request.Params["search"].ToString() : String.Empty;
            UrunDb db = new UrunDb();
            int subCategory = 0,
                category = 0,
                personelID = 0,
                counter = 0;

            db.Connect();
            db.command = new SqlCommand("SELECT	* FROM tbl_Urun WHERE	Urun_Barkod LIKE @barcode", db.connection);
            db.command.Parameters.AddWithValue("@barcode", u.Barkod);
            db.command.ExecuteNonQuery();
            db.reader = db.command.ExecuteReader();
            while (db.reader.Read())
            {
                txtCost.Text = Convert.ToSingle(db.reader["Urun_Fiyat"]).ToString();
                txtStock.Text = db.reader["Urun_Stok"].ToString();
                txtUrunAd.Text = db.reader["Urun_Ad"].ToString();
                txtBarkod.Text = search;
                txtFeatures.Text = db.reader["Urun_Ozellikleri"].ToString();
                subCategory = Convert.ToInt16(db.reader["AltKategori_id"]);
                personelID = Convert.ToInt16(db.reader["Personel_id"]);
                counter++;
            }
            db.reader.Close();
            if (counter == 0)
            {
                Label_SearchNotFound.Visible = true;
                Label_SearchNotFound.Text = "Aradığınız ürün bulunamadı!";
            }
            else
            {
                db.command = new SqlCommand("SELECT * FROM tbl_AltKategori WHERE AltKategori_ID=@subCategory", db.connection);
                db.command.Parameters.AddWithValue("@subCategory", subCategory);
                db.command.ExecuteNonQuery();
                db.reader = db.command.ExecuteReader();
                while (db.reader.Read())
                {
                    category = Convert.ToInt16(db.reader["Kategori_id"]);
                }
                db.reader.Close();
                db.connection.Close();
                db.connection.Dispose();

                Kategori k = new Kategori();
                k.Id = category;
                KategoriDb kdb = new KategoriDb();
                Label_CurrentCategory.Text = "";
                Label_CurrentCategory.Visible = true;
                Label_CurrentCategory.Text = kdb.GetCategoryName(k);

                AltKategori ak = new AltKategori();
                ak.Id = subCategory;
                AltKategoriDb akdb = new AltKategoriDb();
                Label_CurrentSubCategory.Text = "";
                Label_CurrentSubCategory.Visible = true;
                Label_CurrentSubCategory.Text = akdb.GetSubCategoryName(ak);
                ShowCategory();
            }
        }

        protected void btnProductDelete_Click(object sender, EventArgs e)
        {
            
            Urun u = new Urun();
            u.Barkod = txtBarkod.Text;
            UrunDb db = new UrunDb();
            int productID = db.GetProductID(u);
            UrunResim ur = new UrunResim();
            ur.UrunId.Id = productID;
            UrunResimDb urdb = new UrunResimDb();
            try
            {
                urdb.Delete(ur);
                db.Delete(u);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
            }
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }
    }
}
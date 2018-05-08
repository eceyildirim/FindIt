using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class MapDesign : System.Web.UI.Page
    {
        public string rafAd = String.Empty;
        public string raflar = String.Empty;
        public int rafDeleteID = 0;
        public string html = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string operation = Request.Params["operation"] != null ? Request.Params["operation"].ToString() : String.Empty;
            if (operation.ToLower() =="save")
            {
                html=Request.Params["html"] != null ? Request.Params["html"].ToString() : String.Empty;
                RaflarDb db = new RaflarDb();
                db.Connect();
                db.command = new SqlCommand("INSERT INTO tbl_Harita (Harita_Tasarim) VALUES (@html)",db.connection);
                db.command.Parameters.AddWithValue("@html",html);
                db.command.ExecuteNonQuery();
                db.connection.Close();
                db.connection.Dispose();
            }
            rafDeleteID = Request.Params["Delete"] != null ? Convert.ToInt16(Request.Params["Delete"]) : 0;
            if (rafDeleteID != 0)
            {
                Raflar r = new Raflar();
                r.Id = rafDeleteID;
                RaflarDb db = new RaflarDb();
                try
                {
                    db.Delete(r);
                }
                catch (Exception hata)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
                }
            }
            SubCategoryListShow();
            ShowShapes();
        }

        private void SubCategoryListShow()
        {
            AltKategoriDb db = new AltKategoriDb();
            DropDownList_SubCategorySelect.DataSource = db.GetAllSubCategory();
            DropDownList_SubCategorySelect.DataTextField = "AltKategori_Ad";
            DropDownList_SubCategorySelect.DataValueField = "AltKategori_ID";
            DropDownList_SubCategorySelect.DataBind();
        }

        protected void btnAddShelf_Click(object sender, EventArgs e)
        {
            Raflar r = new Raflar();
            r.Ad = Request.Params["rafAd"] != null ? Request.Params["rafAd"].ToString() : String.Empty;
            r.AltKategoriId.Id = Convert.ToInt16(DropDownList_SubCategorySelect.SelectedItem.Value);
            if (RadioButton_Circle.Checked)
            {
                r.Sekil = "Circle";
            }
            if (RadioButton_Square.Checked)
            {
                r.Sekil = "Square";
            }
            if (RadioButton_Triangle.Checked)
            {
                r.Sekil = "Triangle";
            }
            RaflarDb db = new RaflarDb();
            try
            {
                db.Insert(r);
            }
            catch (Exception hata)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
            }
            ShowShapes();
        }

        private void ShowShapes()
        {
            raflar = "";
            int i = 0;
            RaflarDb db = new RaflarDb();
            db.Connect();
            db.command = new SqlCommand("Select * From View_Raflar", db.connection);
            db.command.ExecuteNonQuery();
            db.reader = db.command.ExecuteReader();
            while (db.reader.Read())
            {
                i++;
                int rafID = Convert.ToInt16(db.reader["Raf_ID"]);
                string rafAd = db.reader["Raf_Ad"].ToString();
                string rafSekil = db.reader["Raf_Sekil"].ToString();
                string altkategori = db.reader["AltKategori_Ad"].ToString();
                string rafShape = "";
                if (rafSekil == "Circle")
                {
                    rafShape = "<div id='raf" + rafID.ToString() + "' class='DrawCircle'></div>";
                }
                if (rafSekil == "Triangle")
                {
                    rafShape = "<div id='raf" + rafID.ToString() + "' class='DrawTriangle'></div>";
                }
                if (rafSekil == "Square")
                {
                    rafShape = "<div id='raf" + rafID.ToString() + "' class='DrawSquare'></div>";
                }
                raflar += String.Format("<tr>" +
                                    "<td>" + i + "</td>" +
                                    "<td>{0}</td>" +
                                    "<td>{1}</td>" +
                                    "<td>" +
                                        "{2}" +
                                    "</td>" +
                                    "<td>" +
                                    "<input id='btn{3}' type='button'  class='btn btn-success' onClick='AddShelf({3})' Value='Ekle'/>" +
                                    "</td>" +
                                    "<td>" +
                                    "<a href='MapDesign.aspx?Delete={3}' class='text-danger'>Sil</a>" +
                                    "</td>" +
                                "</tr>", rafAd, altkategori, rafShape, rafID);
            }
            db.reader.Close();
            db.reader.Dispose();
            db.connection.Close();
            db.connection.Dispose();
        }

        protected void btnMapAdd_Click(object sender, EventArgs e)
        {
            html = Request.Params["html"] != null ? Request.Params["html"].ToString() : String.Empty;
        }
    }
}
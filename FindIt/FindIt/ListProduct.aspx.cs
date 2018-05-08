using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class ListProduct : System.Web.UI.Page
    {
        public string search = String.Empty;
        public string productLists = String.Empty;
        public string searchinpage = String.Empty;
        public string stock = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            search = Request.Params["Search"] != null ? Request.Params["Search"].ToString() : String.Empty;
            search = search.Replace('-', ' ');
            stock = Request.Params["Stok"] != null ? Request.Params["Stok"].ToString() : String.Empty;
            GetProducts(search, stock);
        }

        private void GetProducts(string search, string stok)
        {
            UrunDb db = new UrunDb();
            db.Connect();
            db.command = new SqlCommand("sp_SearchProductList", db.connection);
            db.command.CommandType = CommandType.StoredProcedure;
            db.command.Parameters.AddWithValue("@search", search);
            db.command.Parameters.AddWithValue("@stok", stok);
            db.command.Parameters.AddWithValue("@altkategori", 0);
            db.command.ExecuteNonQuery();
            db.reader = db.command.ExecuteReader();
            while (db.reader.Read())
            {
                int productID = Convert.ToInt16(db.reader["Urun_ID"]);
                string productName = db.reader["Urun_Ad"].ToString();
                decimal prudoctCost = Convert.ToDecimal(db.reader["Urun_Fiyat"]);
                string imgPath = db.reader["UrunResim_Yol"].ToString();
                productLists += String.Format("<div class='col-sm-4' style='margin-top:2em;'>" +
                                    "<div class='card'>" +
                                        "<div class='card-body text-center'>" +
                                            "<img src='{0}' class='img-thumbnail' style='width:150px;height:150px;' />" +
                                            "<a href='#'><h4><p><strong>{1}</strong></p></h4></a>" +
                                          "  <p>{2}</p>" +
                                            "<a href='ProductDetails.aspx?ProductID={3}' class='btn btn-fill btn-info'>İncele</a>" +
                                       " </div>" +
                                    "</div>" +
                                "</div>", imgPath, prudoctCost, productName, productID);
            }
            db.reader.Close();
            db.connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            search = Request.Params["Search"] != null ? Request.Params["Search"].ToString() : String.Empty;
            search = search.Replace('-', ' ');
            searchinpage = Request.Params["searchinpage"] != null ? Request.Params["searchinpage"].ToString() : String.Empty;
            searchinpage = searchinpage.Replace(' ', '-');
            if (search!="" && searchinpage=="")
            {
                searchinpage = search;
            }
            string stok = "";
            if (RadioButton1.Checked)
            {
                stok = "yes";
                Response.Redirect("ListProduct.aspx?Search=" + searchinpage + "&Stok=" + stok + "");
            }
            else if (RadioButton2.Checked)
            {
                stok = "no";
                Response.Redirect("ListProduct.aspx?Search=" + searchinpage + "&Stok=" + stok + "");
            }
            else
            {
                Response.Redirect("ListProduct.aspx?Search=" + searchinpage + "");
            }
            GetProducts(search, stok);
        }
    }
}
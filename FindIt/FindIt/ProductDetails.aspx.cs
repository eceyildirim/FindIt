using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        public  int UrunID=0;
        public string ekranID = String.Empty;
        public int rafID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunID = Convert.ToInt32(Request.QueryString["UrunID"]);


            Urun Product = new Urun();
            Product.Id = UrunID;

            UrunDb dbProduct = new UrunDb();

            dbProduct.Connect();

            SqlCommand command = new SqlCommand("sp_ProductDetails", dbProduct.connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@productID", Product.Id);

            SqlParameter productName = new SqlParameter("@productName", SqlDbType.NVarChar, int.MaxValue);
            productName.Direction = ParameterDirection.Output;
            command.Parameters.Add(productName);

            SqlParameter productPrice = new SqlParameter("@productPrice", SqlDbType.Decimal, 0);
            productPrice.Precision = 18;
            productPrice.Scale = 2;
            productPrice.Direction = ParameterDirection.Output;
            command.Parameters.Add(productPrice);

            SqlParameter productStock = new SqlParameter("@productStock", SqlDbType.Int);
            productStock.Direction = ParameterDirection.Output;
            command.Parameters.Add(productStock);

            SqlParameter productSpecial = new SqlParameter("@productSpecial", SqlDbType.NVarChar, int.MaxValue);
            productSpecial.Direction = ParameterDirection.Output;
            command.Parameters.Add(productSpecial);

            SqlParameter productImageURL = new SqlParameter("@productImageURL", SqlDbType.NVarChar, int.MaxValue);
            productImageURL.Direction = ParameterDirection.Output;
            command.Parameters.Add(productImageURL);

            SqlParameter shelfID = new SqlParameter("@rafID",SqlDbType.Int);
            shelfID.Direction = ParameterDirection.Output;
            command.Parameters.Add(shelfID);


            try
            {
                command.ExecuteNonQuery();


                string pName = productName.Value.ToString();
                string pPrice = Convert.ToString(productPrice.Value);
                string pStock = Convert.ToString(productStock.Value);
                string pSpecial = productSpecial.Value.ToString();
                string pImageURL = productImageURL.Value.ToString();
                rafID = Convert.ToInt16(shelfID.Value);


                labelOzellikler.Text = pSpecial;
                labelStokBilgi.Text = pStock;
                labelUrunAd.Text = pName;
                labelUrunFiyat.Text = pPrice;
                productImage.ImageUrl = pImageURL;


            }
            catch (SqlException hata)
            {
                throw new Exception(hata.Message);
            }

            dbProduct.connection.Close();
            dbProduct.connection.Dispose();



        }
    }
}
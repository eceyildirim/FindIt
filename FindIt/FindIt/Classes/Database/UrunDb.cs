using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FindIt
{
    public class UrunDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            Urun u = (Urun)entity;
            Connect();
            command = new SqlCommand("sp_ProductAdd", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@productName", u.Ad);
            command.Parameters.AddWithValue("@productCost", u.Fiyat);
            command.Parameters.AddWithValue("@productBarcode", u.Barkod);
            command.Parameters.AddWithValue("@subcategoryId", u.AltKategoriId.Id);
            command.Parameters.AddWithValue("@productStock", u.Stok);
            command.Parameters.AddWithValue("@personalId", u.PersonelId.Id);
            command.Parameters.AddWithValue("@productEspecial", u.Ozellikler);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException hata)
            {
                throw new Exception(hata.Message);
            }
            connection.Close();
            connection.Dispose();
        }

        public override void Delete(IEntity entity)
        {
            Urun u = (Urun)entity;
            Connect();
            command = new SqlCommand("DELETE FROM tbl_Urun WHERE Urun_Barkod LIKE @barcode",connection);
            command.Parameters.AddWithValue("@barcode",u.Barkod);
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
        }

        public override void Update(IEntity entity)
        {
            Urun u = (Urun)entity;
            Connect();
            command = new SqlCommand("sp_ProductUpdate",connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@barcode",u.Barkod);
            command.Parameters.AddWithValue("@productName",u.Ad);
            command.Parameters.AddWithValue("@productCost",u.Fiyat);
            command.Parameters.AddWithValue("@productStock",u.Stok);
            command.Parameters.AddWithValue("@productFeatures",u.Ozellikler);
            command.Parameters.AddWithValue("@productSubCategory",u.AltKategoriId.Id);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException hata)
            {
                throw new Exception(hata.Message);
            }
            connection.Close();
            connection.Dispose();
        }

        public override DataTable Lists(IEntity entity)
        {
            throw new NotImplementedException();
        }

        internal int GetProductID(Urun u)
        {
            int productID = 0;
            Connect();
            command = new SqlCommand("SELECT Urun_ID FROM tbl_Urun WHERE Urun_Barkod LIKE @barcode",connection);
            command.Parameters.AddWithValue("@barcode",u.Barkod);
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                productID = Convert.ToInt16(reader["Urun_ID"]);
            }
            reader.Close();
            reader.Dispose();
            connection.Close();
            connection.Dispose();
            return productID;
        }
    }
}

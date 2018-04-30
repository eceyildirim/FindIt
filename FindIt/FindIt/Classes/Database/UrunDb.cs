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
            command.Parameters.AddWithValue("@subcategoryId", u.AltKategoriId);
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
            throw new NotImplementedException();
        }

        public override void Update(IEntity entity)
        {
            throw new NotImplementedException();
        }

        public override System.Data.DataTable Lists(IEntity entity)
        {
            throw new NotImplementedException();
        }
    }
}

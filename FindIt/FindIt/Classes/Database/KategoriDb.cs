using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FindIt
{
    public class KategoriDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            Kategori k = (Kategori)entity;
            Connect();
            command = new SqlCommand("sp_KategoriEkle", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@categoryName",k.Ad);
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

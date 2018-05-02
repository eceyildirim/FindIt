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
            Kategori k = (Kategori)entity;
            Connect();
            command = new SqlCommand("sp_KategoriSil",connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@categoryId", k.Id);
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

        public override void Update(IEntity entity)
        {
            throw new NotImplementedException();
        }

        public override System.Data.DataTable Lists(IEntity entity)
        {
            throw new NotImplementedException();
        }

        internal object CategoriesShow()
        {
            Connect();
            command = new SqlCommand("SELECT * FROM tbl_Kategori",connection);
            command.ExecuteNonQuery();
            table = new DataTable();
            adaptor = new SqlDataAdapter(command);
            adaptor.Fill(table);
            connection.Close();
            connection.Dispose();
            return table;
        }

        internal string GetCategoryName(Kategori k)
        {
            string category = "";
            Connect();
            command = new SqlCommand("SELECT * FROM tbl_Kategori WHERE Kategori_ID = "+k.Id+"", connection);
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                category = reader["Kategori_Ad"].ToString();
            }
            reader.Close();
            reader.Dispose();
            connection.Close();
            connection.Dispose();
            return category;
        }
    }
}

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FindIt
{
    public class AltKategoriDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            AltKategori a = (AltKategori)entity;
            Connect();
            command = new SqlCommand("sp_AltKategoriEkle", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@altKategoriAdi", a.Ad);
            command.Parameters.AddWithValue("@kategoriId", a.KategoriId.Id);
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
            AltKategori a = (AltKategori)entity;
            Connect();
            command = new SqlCommand("sp_AltKategoriDelete",connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@AltKategoriId",a.Id);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException hata)
            {                
                throw new Exception (hata.Message);
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

        internal object SubCategoriesShow()
        {
            Connect();
            command = new SqlCommand("SELECT * FROM tbl_AltKategori", connection);
            command.ExecuteNonQuery();
            table = new DataTable();
            adaptor = new SqlDataAdapter(command);
            adaptor.Fill(table);
            connection.Close();
            connection.Dispose();           
            return table;
        }

        internal string GetCategory(AltKategori a)
        {
            int categoryId=0;
            string category="";
            Connect();
            command = new SqlCommand("SELECT Kategori_id FROM tbl_AltKategori WHERE AltKategori_ID="+a.Id+" ",connection);
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                categoryId = Convert.ToInt16(reader["Kategori_id"]);
            }
            reader.Close();
            command = new SqlCommand("SELECT Kategori_Ad FROM tbl_Kategori WHERE Kategori_ID="+categoryId+"",connection);
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

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;

namespace FindIt
{
    public class UrunResimDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            int productId = 0;
            UrunResim r = (UrunResim)entity;
            Connect();
            command = new SqlCommand("SELECT TOP(1) Urun_Id FROM tbl_Urun ORDER BY Urun_Id DESC",connection);
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                productId = Convert.ToInt16(reader["Urun_Id"]);
            }
            reader.Close();
            reader.Dispose();

            command = new SqlCommand("INSERT INTO tbl_UrunResim(UrunResim_Yol,Urun_id) VALUES (@path,@id)",connection);
            command.Parameters.AddWithValue("@path",r.Yol);
            command.Parameters.AddWithValue("@id",productId);
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
        }

        public override void Delete(IEntity entity)
        {
            UrunResim u = (UrunResim)entity;
            Connect();
            command = new SqlCommand("DELETE FROM tbl_UrunResim WHERE Urun_id="+u.UrunId.Id+"",connection);
            command.ExecuteNonQuery();
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
    }
}

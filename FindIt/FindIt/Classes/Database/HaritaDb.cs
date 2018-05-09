using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;

namespace FindIt
{
    public class HaritaDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            Harita h = (Harita)entity;
            Connect();
            command = new SqlCommand("INSERT INTO tbl_Harita (Harita_Tasarim) VALUES (@html)",connection);
            command.Parameters.AddWithValue("@html",h.Harita1);
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

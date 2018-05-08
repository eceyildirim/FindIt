using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FindIt
{
    public class RaflarDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            Raflar r = (Raflar)entity;
            Connect();
            command = new SqlCommand("sp_RafEkle", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@rafAdi", r.Ad);
            command.Parameters.AddWithValue("@rafSekli", r.Sekil);
            command.Parameters.AddWithValue("@altKategori", r.AltKategoriId.Id);
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
            Raflar r = (Raflar)entity;
            Connect();
            command = new SqlCommand("DELETE FROM tbl_Raflar WHERE Raf_ID=" + r.Id + "", connection);
            command.ExecuteNonQuery();
            connection.Dispose();
            connection.Close();
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

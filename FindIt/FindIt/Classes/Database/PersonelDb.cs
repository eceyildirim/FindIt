using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FindIt
{
    public class PersonelDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            Personel newEmployee = (Personel)entity;
            Connect();

            command = new SqlCommand("sp_SignUp", connection);
            command.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("mAd", SqlDbType.NVarChar, 50).Value = textBox1.Text; //Stored procedure deki parametrelere
            command.Parameters.AddWithValue("@name", newEmployee.Tc);
            command.Parameters.AddWithValue("@surname", newEmployee.Ad);
            command.Parameters.AddWithValue("@tc", newEmployee.Soyad);
            command.Parameters.AddWithValue("@password", newEmployee.Parola);
            command.Parameters.AddWithValue("@statu", 2);

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
            //Personel Employee = new Personel();
            //Connect();

            //command = new SqlCommand("sp_LogIn",connection);
            //command.CommandType = CommandType.StoredProcedure;
            //command.Parameters.AddWithValue("@personelTC",Employee.Ad);
            //command.Parameters.AddWithValue("@personelParola",Employee.Parola);

            //try
            //{
            //    command.ExecuteNonQuery();

            //}
            //catch (Exception hata)
            //     {
            throw new NotImplementedException(/*hata.Message*/);

            //   }

        }
    }
}
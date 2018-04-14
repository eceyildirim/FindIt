using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace FindIt
{
    public abstract class MainDb
    {
       string path;
       public SqlConnection connection;
       public SqlDataReader reader;
       public SqlDataAdapter adaptor;
       public DataTable table;
       public SqlCommand command;

       public  MainDb()
       {
           path = ConfigurationManager.ConnectionStrings["Datapath"].ConnectionString;//webconfig'de connectionString tagleri arasından Datapath'i kendi sql bağlantı yolunuza göre değiştirin.
       }

       public void Connect()
       {
           connection = new SqlConnection(path);
           if (connection.State == ConnectionState.Closed)
           {
               connection.Open();
           }
       }

       public abstract void Insert(IEntity entity);
       public abstract void Delete(IEntity entity);
       public abstract void Update(IEntity entity);
       public abstract DataTable Lists(IEntity entity);
    }
}

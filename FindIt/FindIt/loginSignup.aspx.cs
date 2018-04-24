using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindIt
{
    public partial class loginSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Kullanıcı girişi sağlamak için;
        public void ButtonLogin_Click(object sender, EventArgs e)
        {
            Personel Employee = new Personel();
            Employee.Tc = textPasswordP.Text;
            Employee.Parola = textKullaniciAd.Text;


            HttpCookie cookie = Request.Cookies["UserInformation"];
            try
            {
                if (cookie == null)
            {
                if (Employee.Tc != null && Employee.Parola != null)
                {
                    PersonelDb dbEmployee = new PersonelDb();
                    dbEmployee.Connect();
                    SqlCommand command = new SqlCommand("sp_LogIn", dbEmployee.connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@personelTC", Employee.Tc);
                    command.Parameters.AddWithValue("@personelParola", Employee.Parola);

                    SqlParameter personelAd = new SqlParameter("@personelAd", SqlDbType.NVarChar,50);
                    personelAd.Direction = ParameterDirection.Output;
                    command.Parameters.Add(personelAd);

                    SqlParameter personelSoyad = new SqlParameter("@personelSoyad", SqlDbType.NVarChar,50);
                    personelSoyad.Direction = ParameterDirection.Output;
                    command.Parameters.Add(personelSoyad);

                    SqlParameter personelStatu = new SqlParameter("@personelStatu", SqlDbType.Int);
                    personelStatu.Direction = ParameterDirection.Output;
                    command.Parameters.Add(personelStatu);

                    command.ExecuteNonQuery();

                        string kullaniciAd = personelAd.ToString();
                        string kullaniciSoyad = personelSoyad.Value.ToString();
                        string kullaniciStatu = personelStatu.Value.ToString();

                        if (kullaniciAd != "")
                        {
                            HttpCookie cookies = new HttpCookie("UserInformation");
                            cookies["name"] = kullaniciAd;
                            cookies["surname"] = kullaniciSoyad;
                            cookies["statu"] = kullaniciStatu;
                            cookies.Expires = DateTime.Now.AddDays(1);
                            Response.Cookies.Add(cookies);
                            Response.Redirect("ProductDetails.aspx"); //deneme amaçlı 
                        }
                        else
                        {
                            Response.Write("< script LANGUAGE = 'JavaScript' > alert('Hatalı giriş! Tekrar Deneyin.') </ script > ");
                        }
                    }
            }
            }
            catch (Exception hata)
            {
                Response.Redirect(hata.Message);
                Response.Write("<script LANGUAGE='JavaScript' >alert(" + hata + ")</script>");

            }
            Response.Redirect(Request.RawUrl);
        }



        // Yeni kullanıcı oluşturmak için ;


        public void signUpButton_Click(object sender,EventArgs e)
        {


            Personel newEmployee = new Personel();
            newEmployee.Tc = textTC.Text;
            newEmployee.Ad = textCreateEmployeeName.Text;
            newEmployee.Soyad = textCreateEmployeeSurname.Text;
            newEmployee.Parola = passwordCreateP.Text;



            PersonelDb pDb = new PersonelDb();

            try
            {
                if (newEmployee.Parola == passwordCreateP2.Text)
                    pDb.Insert(newEmployee);

            }
            catch (Exception hata)
            {
                Response.Write(hata.Message);

            }
            finally
            {
                passwordCreateP.Text = "";
                passwordCreateP2.Text = "";
                textTC.Text = "";
                textCreateEmployeeName.Text = "";
                textCreateEmployeeSurname.Text = "";
            }

        }
    }
}
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
        public string name = String.Empty;
        public string surName = String.Empty;
        public string userId = String.Empty;
        public string userStatu = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            if (cookie == null)
            {
                Personel p = new Personel();
                p.Tc = textKullaniciAd.Text;
                p.Parola = textPasswordP.Text;
                PersonelDb db = new PersonelDb();
                db.Connect();
                db.command = new SqlCommand("sp_LogIn", db.connection);
                db.command.CommandType = CommandType.StoredProcedure;
                db.command.Parameters.AddWithValue("@personelTC", p.Tc);
                db.command.Parameters.AddWithValue("@personelParola", p.Parola);

                SqlParameter kullaniciId = new SqlParameter("@personelID", SqlDbType.Int);
                kullaniciId.Direction = ParameterDirection.Output;
                db.command.Parameters.Add(kullaniciId);

                SqlParameter kullaniciStatu = new SqlParameter("@personelStatu", SqlDbType.Int);
                kullaniciStatu.Direction = ParameterDirection.Output;
                db.command.Parameters.Add(kullaniciStatu);

                SqlParameter kullaniciName = new SqlParameter("@personelAd", SqlDbType.NVarChar, 50);
                kullaniciName.Direction = ParameterDirection.Output;
                db.command.Parameters.Add(kullaniciName);

                SqlParameter kullaniciSurName = new SqlParameter("@personelSoyad", SqlDbType.NVarChar, 50);
                kullaniciSurName.Direction = ParameterDirection.Output;
                db.command.Parameters.Add(kullaniciSurName);

                try
                {
                    db.command.ExecuteNonQuery();
                }
                catch (Exception hata)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
                }

                name = kullaniciName.Value.ToString();
                surName = kullaniciSurName.Value.ToString();
                userId = kullaniciId.Value.ToString();
                userStatu = kullaniciStatu.Value.ToString();

                if (Convert.ToInt32(userId) > 0)
                {
                    HttpCookie cookies = new HttpCookie("UserInformation");
                    cookies["name"] = name;
                    cookies["surname"] = surName;
                    cookies["userID"] = userId;
                    cookies["userStatu"] = userStatu;
                    cookies.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookies);
                    Response.Redirect("ProductOperations.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Hatalı giriş! Tekrar Deneyin.')</script>");
                }
            }
            else
            {
                Response.Redirect("Search.aspx");
            }
        }

        protected void signUpButton_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            if (cookie == null)
            {
                if (passwordCreateP.Text == passwordCreateP2.Text)
                {
                    Personel p = new Personel();
                    p.Ad = textCreateEmployeeName.Text;
                    p.Soyad = textCreateEmployeeSurname.Text;
                    p.Tc = textTC.Text;
                    p.Parola = passwordCreateP.Text;
                    PersonelDb db = new PersonelDb();
                    try
                    {
                        db.Insert(p);
                    }
                    catch (Exception hata)
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('" + hata.Message.ToString() + "')</script>");
                    }

                    textCreateEmployeeName.Text = "";
                    textCreateEmployeeSurname.Text = "";
                    textTC.Text = "";
                    passwordCreateP.Text = "";
                }
            }
        }
    }
}
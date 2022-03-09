using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{

    public partial class forgetpassword : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            DateTime today = DateTime.Now;
            DateTime date1 = today;

            SqlConnection con = new SqlConnection(sqlcon);
            con.Open();
            String check = ("Select * from user_tbl where email='" + TextBox1.Text + "'");
            SqlCommand cmd = new SqlCommand(check, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                String Uid = dt.Rows[0][0].ToString();
                String add = "Insert into ForgotPassRequest(Id,userid,RequestDateTime)values(@Id,@userid,@RequestDateTime)";
                SqlCommand cmd1 = new SqlCommand(add, con);
                cmd1.Parameters.AddWithValue("@Id", myGUID);
                cmd1.Parameters.AddWithValue("@userid", Uid);
                cmd1.Parameters.AddWithValue("@RequestDateTime", date1);
                cmd1.ExecuteNonQuery();
                try
                {
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String UserId = dt.Rows[0][0].ToString();
                    String EmailBody = "Hi &nbsp;" + UserId + ",<br/><br/> Click the link link below to reset your password <br/><br/> http://localhost:6610/Resetpassword.aspx?Uid=" + myGUID;
                    MailMessage PassRecMail = new MailMessage("tcpexportstocks@gmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";
                    PassRecMail.Priority = MailPriority.High;
                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                    SMTP.UseDefaultCredentials = false;
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "tcpexportstocks@gmail.com",
                        Password = "3waysolu1998*%"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);
                    Response.Write("<script>alert('Check your email to reset password.');</script>");
                    TextBox1.Text = "";
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Message not sent!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('OOPS this email does not exist');</script>");
            }
        }
    }
}
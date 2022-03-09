using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class Resetpassword : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        String GUIDvalue;
        String userid;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlcon);
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                String check = ("Select * from ForgotPassRequest where Id='" + GUIDvalue + "'");
                SqlCommand cmd = new SqlCommand(check, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    userid = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid!');</script>");
                }
            }
            else
            {
                Response.Redirect("Forgetpassword.aspx");
            }
            if (IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    Button1.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid!');</script>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox1.Text == TextBox2.Text)
            {
                SqlConnection con = new SqlConnection(sqlcon);
                con.Open();
                String up = ("Update user_tbl set Password='" + TextBox1.Text + "' where UserID='" + userid + "'");
                SqlCommand cmd = new SqlCommand(up, con);
                cmd.ExecuteNonQuery();
                String del = ("Delete from ForgotPassRequest where userid='" + userid + "'");
                SqlCommand cmd1 = new SqlCommand(del, con);
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Password Sucessfully changed!');</script>");
            }
            else
            {
                Response.Write("<script>alert('All fields are mandatory');</script>");
            }

        }
    }
}
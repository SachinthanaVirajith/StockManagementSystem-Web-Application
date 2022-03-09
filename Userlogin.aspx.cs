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
    public partial class Userlogin : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                Session.Clear();
            }
            else
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection user = new SqlConnection(sqlcon);

                string query = "Select * from user_tbl Where UserID= '" + TextBox1.Text + "' and Password= '" + TextBox2.Text + "'";
                SqlDataAdapter adpt = new SqlDataAdapter(query, user);
                DataTable dtable = new DataTable();
                adpt.Fill(dtable);
                if (dtable.Rows.Count == 1)

                {
                    SqlConnection con = new SqlConnection(sqlcon);
                    con.Open();
                    SqlCommand cmd1;
                    cmd1 = new SqlCommand("Select UserRoll From user_tbl Where UserID = '" + TextBox1.Text + "'", con);
                    SqlDataReader dr;
                    dr = cmd1.ExecuteReader();
                    dr.Read();
                    string test = dr.GetString(0);
                    int role = int.Parse(test);
                    Session["UserID"] = TextBox1.Text;
                    if (role == 1)
                    {
                        Session["role"] = "user1";
                        Response.Redirect("HomeAssistant.aspx");
                    }
                    else if (role == 2)
                    {
                        Session["role"] = "user2";
                        Response.Redirect("QCdash.aspx");
                    }
                    else
                    {
                        Session["role"] = "user4";
                        Response.Redirect("Managerdash.aspx");
                    }
                    dr.Close();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Login');</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Something went wrong....!');</script>");
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

    }
}
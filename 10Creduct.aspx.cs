using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class _10Creduct : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        float valtxt = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

            }
            else
            {
                Response.Redirect("Userlogin.aspx");
            }

            if (!Page.IsPostBack)
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                SqlCommand cmd2 = new SqlCommand("Select netWeight from stock where material='10C' and wash='Wash'", cnn);
                SqlCommand cmd3 = new SqlCommand("Select netWeight from stock where material='10C' and wash='Non-Wash/High-EC'", cnn);
                //SqlDataReader dr = cmd.ExecuteReader();
                //dr.Read();
                TextBox2.Text = cmd2.ExecuteScalar().ToString() + " Kg ";
                TextBox3.Text = cmd3.ExecuteScalar().ToString() + " Kg ";
                //dr.Close();


                //SqlConnection cnn = new SqlConnection(sqlcon);
                //cnn.Open();

                //SqlDataReader dr1 = cmd1.ExecuteReader();
                //dr1.Read();

                //dr1.Close();
                cnn.Close();
               
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string selval = DropDownList1.SelectedItem.Value.ToString();
            try
            {
                SqlConnection con = new SqlConnection(sqlcon);
                con.Open();
                String sql = "Select netWeight from stock where material='10C' and wash='" + selval + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                float val = float.Parse(cmd.ExecuteScalar().ToString());
                this.valtxt = float.Parse(TextBox1.Text);
                Label3.Text = valtxt.ToString();
                Label3.Visible = false;
                float vallast = val - valtxt;
                if (val <= 0)
                {
                    string script1 = "alert(\"Stock is Empty!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script1, true);
                }
                else if (val < valtxt)
                {
                    string script1 = "alert(\"Not Enough Stock To Reduct!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script1, true);
                }
                else if (val > valtxt)    
                {
                    SqlCommand cmd1 = new SqlCommand("Update stock set netWeight='" + vallast + "'where material='10C' and wash='" + selval + "'", con);
                    cmd1.ExecuteNonQuery();
                    string script = "alert(\"Sucessfully Reduct From The Stock!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
                 
                    SqlCommand cmd2 = new SqlCommand("insert into productionHistory(material,washStatus,date,quantity,type) values(@material,@washStatus,@date,@quantity,@type)", con);
                    cmd2.Parameters.AddWithValue("@material", "10c");
                    cmd2.Parameters.AddWithValue("@washStatus", selval);
                    cmd2.Parameters.AddWithValue("@date", DateTime.Now);
                    cmd2.Parameters.AddWithValue("@quantity", valtxt);
                    cmd2.Parameters.AddWithValue("@type", "Production");
                    cmd2.ExecuteNonQuery();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                string script2 = "alert(\"Enter value for Reduct!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }

            TextBox1.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductReduction.aspx");
        }
    }
}
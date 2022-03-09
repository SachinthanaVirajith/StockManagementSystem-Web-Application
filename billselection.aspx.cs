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
    public partial class billselection : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

            }
            else
            {
                Response.Redirect("Userlogin.aspx");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Session["SelectedId"] = gr.Cells[1].Text;

            SqlConnection con = new SqlConnection(sqlcon);
            con.Open();
            int billId = Convert.ToInt32(Session["SelectedId"]);
            string sql = "UPDATE Calculate SET readStatus = 'read' WHERE billId = '" + billId + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("voucher.aspx");




        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAssistant.aspx");
        }
    }
}

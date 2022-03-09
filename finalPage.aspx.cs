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
    public partial class finalPage : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int billId = Convert.ToInt32(Session["SelectedId"]);
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            string updateReadStatus = "update asst set loadStatus='true' where billId='" + billId + "'";
            SqlCommand cmd19 = new SqlCommand(updateReadStatus, cnn);
            cmd19.ExecuteNonQuery();
            cnn.Close();

            Response.Redirect("QCfinalReport.aspx");
        }
    }
}
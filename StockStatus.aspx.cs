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
    public partial class StockStatus : System.Web.UI.Page
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
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            String sql1 = "select netWeight from stock where material='Coco-Peat' and wash='Low-EC(ec<500)'";
            SqlCommand cmd1 = new SqlCommand(sql1, cnn);
            cocoPeatLowEc1.Text = cmd1.ExecuteScalar().ToString() + " Kg";

            String sql7 = "select netWeight from stock where material='Coco-Peat' and wash='Low-EC(500-1500)'";
            SqlCommand cmd7 = new SqlCommand(sql7, cnn);
            cocoPeatLowEc2.Text = cmd7.ExecuteScalar().ToString() + " Kg";

            String sql2 = "select netWeight from stock where material='Coco-Peat' and wash='Non-Wash/High-EC'";
            SqlCommand cmd2 = new SqlCommand(sql2, cnn);
            cocoPeatUnWashlbl.Text = cmd2.ExecuteScalar().ToString() + " Kg";

            String sql8 = "select netWeight from stock where material='Coco-Peat' and wash='Super-Wash'";
            SqlCommand cmd8 = new SqlCommand(sql8, cnn);
            superWashlbl.Text = cmd8.ExecuteScalar().ToString() + " Kg";

            String sql3 = "select netWeight from stock where material='10c' and wash='Wash'";
            SqlCommand cmd3 = new SqlCommand(sql3, cnn);
            Wash10clbl.Text = cmd3.ExecuteScalar().ToString() + " Kg";

            String sql4 = "select netWeight from stock where material='10c' and wash='Non-Wash/High-EC'";
            SqlCommand cmd4 = new SqlCommand(sql4, cnn);
            UnWash10clbl.Text = cmd4.ExecuteScalar().ToString() + " Kg";

            String sql5 = "select netWeight from stock where material='7c' and wash='Wash'";
            SqlCommand cmd5 = new SqlCommand(sql5, cnn);
            Wash7clbl.Text = cmd5.ExecuteScalar().ToString() + " Kg";

            String sql6 = "select netWeight from stock where material='7c' and wash='Non-Wash/High-EC'";
            SqlCommand cmd6 = new SqlCommand(sql6, cnn);
            UnWash7clbl.Text = cmd6.ExecuteScalar().ToString() + " Kg";

            cmd1.ExecuteNonQuery();
            cnn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Managerdash.aspx");
        }
    }
}
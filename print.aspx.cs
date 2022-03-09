using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class print : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {  
            DateTime servaerTime = DateTime.Now;
            DateTime today = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(servaerTime, TimeZoneInfo.Local.Id, "India Standard Time");

            SqlConnection con = new SqlConnection(sqlcon);
            con.Open();
            int billId1 = Convert.ToInt32(Session["billId"]);
            SqlCommand cmd = new SqlCommand("Select * from asst where billId='" + billId1 + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lblsupplier.Text = dr[3].ToString();
            lbldate.Text = today.ToString();
            lblpaymentmethod.Text = dr[9].ToString();
            lblvoucherno.Text = dr[0].ToString();
            lblcheque.Text = dr[10].ToString();
            lbldate1.Text = dr[2].ToString();
            lblmat.Text = dr[5].ToString();
            lblstatus.Text = dr[6].ToString();
            lblunit.Text = dr[7].ToString();
            lblquantity.Text = dr[8].ToString();
            lblrate.Text = dr[11].ToString();
            lblamt.Text = dr[20].ToString();
            lbldesc.Text = dr[17].ToString();
            lblreduct.Text = dr[19].ToString();
            lbldesc1.Text = dr[16].ToString();
            lbladdi.Text = dr[18].ToString();
            Label17.Text = dr[12].ToString();
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}
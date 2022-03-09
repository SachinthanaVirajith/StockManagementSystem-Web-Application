using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class billSearch : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int billId = int.Parse(searchtxt.Text);
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select vehicalNumber,sellerName,material,wash,fullWeight,sampleWeight,netWeight,volume,sandWeight,averageMoister,kohuWeight,checkedBags,rejectedBags,sampleWastage,billId,date,averageEc from material where billId='" + billId + "'";
                cmd.Connection = cnn;
                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        vehicleNumbertxt.Text = (rd[0]).ToString();
                        sellerNametxt.Text = (rd[1]).ToString();
                        materialtxt.Text = (rd[2]).ToString();
                        washStatustxt.Text = (rd[3]).ToString();
                        fullWeighttxt.Text = (rd[4]).ToString() + " Kg";
                        sampleWeighttxt.Text = (rd[5]).ToString() + " Kg";
                        netWeighttxt.Text = (rd[6]).ToString() + " Kg";
                        volumetxt.Text = (rd[7]).ToString();
                        sandWeighttxt.Text = (rd[8]).ToString() + " Kg";
                        averageMoisturetxt.Text = (rd[9]).ToString();
                        coirWeighttxt.Text = (rd[10]).ToString() + " Kg";
                        checkedBagtxt.Text = (rd[11]).ToString();
                        rejectedBagtxt.Text = (rd[12]).ToString();
                        sampleWastagetxt.Text = (rd[13]).ToString() + " Kg";
                        billNumtxt.Text = (rd[14]).ToString();
                        datetxt.Text = (rd[15]).ToString();
                        averageEc.Text = (rd[16].ToString());

                        double fullWeight = double.Parse(rd[4].ToString());
                        double netWeight = double.Parse(rd[6].ToString());
                        wastageWeighttxt.Text = (fullWeight - netWeight).ToString() + " Kg";
                    }
                }
                rd.Close();

                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "Select voucherId,paymentMethod,chequeNumber,rate,netAmount,custNetWeight from asst where billId='" + billId + "'";
                cmd2.Connection = cnn;
                SqlDataReader rd2 = cmd2.ExecuteReader();
                if (rd2.HasRows)
                {
                    if (rd2.Read())
                    {
                        voucherNumtxt.Text = (rd2[0]).ToString();
                        paymentMethodtxt.Text = (rd2[1]).ToString();
                        chequeNumbertxt.Text = (rd2[2]).ToString();
                        ratetxt.Text = "Rs " + (rd2[3]).ToString();
                        netAounttxt.Text = "Rs " + (rd2[4]).ToString();
                        custNetWeighttxt.Text = (rd2[5]).ToString();
                    }
                }
                rd2.Close();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Something Wrong!!!');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Managerdash.aspx");
        }
    }
}
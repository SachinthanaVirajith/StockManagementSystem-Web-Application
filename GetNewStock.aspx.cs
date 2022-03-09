using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class GetNewStock : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        double fullWeight = 0;
        double sampleWeight = 0;
        double sampleWastage = 0;
        double loadWastage = 0;
        double presentageWastage = 0;
        double wastage = 0;
        double sandWeight = 0;
        double bagWeight = 0;

        double getValueStock = 0;
        

        protected void wastageCalculator()
        {
            try
            { 
                fullWeight = double.Parse(fullWeighttxt.Text);
                sampleWeight = double.Parse(sampleWeighttxt.Text);
                sampleWastage = double.Parse(sampleWastagetxt.Text);
                sandWeight = double.Parse(sandWeighttxt.Text);
                bagWeight = double.Parse(bagWeighttxt.Text);

                loadWastage = (sampleWastage / sampleWeight) * fullWeight;
                presentageWastage = fullWeight * 0.05;

                if (loadWastage > presentageWastage)
                {
                    wastage = loadWastage - presentageWastage;
                }
                else if(presentageWastage >= loadWastage){
                    wastage = 0;
                }
                
                double netWeight = Math.Round(fullWeight - wastage - sandWeight - bagWeight, 2);
                netWeighttxt.Text = netWeight.ToString();
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Something Wrong!!\")";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }

        }
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
            wastageCalculator();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                string dataInsert = "insert into material(date,vehicalNumber,sellerName,material,wash,fullWeight,sampleWeight,averageEc,netWeight,volume,sandWeight,averageMoister,kohuWeight,checkedBags,rejectedBags,sampleWastage,statusCheck,submitStatus) values(@date,@vehicalNumber,@sellerName,@material,@wash,@fullWeight,@sampleWeight,@averageEc,@netWeight,@volume,@sandWeight,@averageMoister,@kohuWeight,@checkedBags,@rejectedBags,@sampleWastage,@statusCheck,@submitStatus)";
                SqlCommand cmd = new SqlCommand(dataInsert, cnn);

                //DateTime dateNow = DateTime.Now;

                DateTime servaerTime = DateTime.Now;
                DateTime dateNow = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(servaerTime, TimeZoneInfo.Local.Id, "India Standard Time");

                cmd.Parameters.AddWithValue("@date", dateNow);
                cmd.Parameters.AddWithValue("@vehicalNumber", vehicleNumtxt.Text);
                cmd.Parameters.AddWithValue("@sellerName", sellerNametxt.Text);
                cmd.Parameters.AddWithValue("@material", materialddl.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@wash", washStatusddl.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@fullWeight", fullWeighttxt.Text);
                cmd.Parameters.AddWithValue("@sampleWeight", sampleWeighttxt.Text);
                cmd.Parameters.AddWithValue("@netWeight", netWeighttxt.Text);
                cmd.Parameters.AddWithValue("@volume", volumetxt.Text);
                cmd.Parameters.AddWithValue("@sandWeight", sandWeighttxt.Text);
                cmd.Parameters.AddWithValue("@averageMoister", averageMoisturetxt.Text);
                cmd.Parameters.AddWithValue("@kohuWeight", coirWeighttxt.Text);
                cmd.Parameters.AddWithValue("@averageEc", averageEctxt.Text);
                cmd.Parameters.AddWithValue("@checkedBags", checkedBagtxt.Text);
                cmd.Parameters.AddWithValue("@rejectedBags", rejectedBagtxt.Text);
                cmd.Parameters.AddWithValue("@sampleWastage", sampleWastagetxt.Text);
                cmd.Parameters.AddWithValue("@statusCheck", "Un Read");
                cmd.Parameters.AddWithValue("@submitStatus", "false");

                string getNetWeight = "select netWeight from stock where material='" + materialddl.SelectedItem.Value + "' and wash='" + washStatusddl.SelectedItem.Value + "'";
                SqlCommand cmd01 = new SqlCommand(getNetWeight, cnn);
                getValueStock = double.Parse(cmd01.ExecuteScalar().ToString());
                getValueStock = getValueStock + double.Parse(fullWeighttxt.Text);
                getValueStock = Math.Round(getValueStock, 3);

                string updateNetWeight = "update stock set netWeight='" + getValueStock + "'where material='" + materialddl.SelectedItem.Value + "' and wash='" + washStatusddl.SelectedItem.Value + "'";
                SqlCommand cmd02 = new SqlCommand(updateNetWeight, cnn);
                cmd.ExecuteNonQuery();
                cmd02.ExecuteNonQuery();
                cnn.Close();

                string script2 = "alert(\"Saved & Details sent to Manager\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);

                sellerNametxt.Text = ""; vehicleNumtxt.Text = ""; fullWeighttxt.Text = ""; sampleWeighttxt.Text = ""; sandWeighttxt.Text = ""; netWeighttxt.Text = "";
                volumetxt.Text = ""; averageMoisturetxt.Text = ""; coirWeighttxt.Text = ""; checkedBagtxt.Text = ""; rejectedBagtxt.Text = ""; sampleWastagetxt.Text = "";
                averageEctxt.Text = "";
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Something Wrong!!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Qcdash.aspx");
        }
    }
}
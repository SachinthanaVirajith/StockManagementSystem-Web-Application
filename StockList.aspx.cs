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
    public partial class StockList : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        private int billId;
        private double NetWeigth;
        private double fullWeight;
        private double wastageWeight;
        private DateTime Date;
        private String VehicleNumber;
        private String SupplierName;
        private String Material;
        private String WashStatus;
        private int CheckedBag;
        private int RejectedBag;
        private int AcceptedBag;

        public double rate;
        public double amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
               
            }
            else
            {
                Response.Redirect("Userlogin.aspx");
            }

            try
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                billId = Convert.ToInt32(Session["SelectedBillId"]);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select vehicalNumber,sellerName,material,wash,fullWeight,sampleWeight,averageEc,netWeight,volume,sandWeight,averageMoister,kohuWeight,checkedBags,rejectedBags,sampleWastage,date from material where billId='" + billId + "'";
                cmd.Connection = cnn;

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        NetWeigth = double.Parse(rd[7].ToString());
                        fullWeight = double.Parse(rd[4].ToString());
                        Date = Convert.ToDateTime(rd[15].ToString());
                        VehicleNumber = rd[0].ToString();
                        SupplierName = rd[1].ToString();
                        Material = rd[2].ToString();
                        WashStatus = rd[3].ToString();
                        CheckedBag = int.Parse(rd[12].ToString());
                        RejectedBag = int.Parse(rd[13].ToString());
                        AcceptedBag = (CheckedBag - RejectedBag);
                        wastageWeight = (fullWeight - NetWeigth);
                        averageEctxt.Text = rd[6].ToString();

                        datetxt.Text = Date.ToString();
                        vehicleNumbertxt.Text = VehicleNumber;
                        sellerNametxt.Text = SupplierName;
                        materialtxt.Text = Material;
                        washStatustxt.Text = WashStatus;
                        fullWeighttxt.Text = fullWeight.ToString() + " Kg";
                        sampleWeighttxt.Text = rd[5].ToString() + " Kg";
                        wastageWeighttxt.Text = wastageWeight.ToString() + " Kg";
                        netWeighttxt.Text = NetWeigth.ToString() + " Kg";
                        volumetxt.Text = rd[8].ToString();
                        sandWeighttxt.Text = rd[9].ToString() + " Kg";
                        averageMoisturetxt.Text = rd[10].ToString();
                        coirWeighttxt.Text = rd[11].ToString() + " Kg";
                        checkedBagtxt.Text = CheckedBag.ToString();
                        rejectedBagtxt.Text = RejectedBag.ToString();
                        sampleWastagetxt.Text = rd[14].ToString() + " Kg";
                        billNumtxt.Text = billId.ToString();

                        materialtxt2.Text = Material;
                        washStatustxt2.Text = WashStatus;
                        acceptBagtxt2.Text = AcceptedBag.ToString();

                        
                    }
                }
                rd.Close();
                string updateReadStatus = "update material set statusCheck='Read' where billId='" + billId + "'";
                SqlCommand cmd19 = new SqlCommand(updateReadStatus, cnn);
                cmd19.ExecuteNonQuery();

                cnn.Close();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('!Something Wrong');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string paymentType = DropDownList1.SelectedItem.Value;

                if (paymentType == "For-NetWeight")
                {
                    rate = float.Parse(ratetxt.Text);
                    rate = Math.Round(rate, 2);
                    amount = (rate * NetWeigth);
                    amount = Math.Round(amount, 2);
                    amounttxt.Text = "Rs. " + amount.ToString();
                    ratetxt2.Text = "x " + rate.ToString();
                    netWeighttxt2.Text = NetWeigth.ToString() + " Kg";
                    custWeighttxt.Text = "";
                }
                else if(paymentType == "Customize-Weight")
                {
                    if (fullWeight != NetWeigth)
                    {
                        double custWeight = double.Parse(custWeighttxt.Text);

                        if (wastageWeight >= custWeight)
                        {
                            rate = float.Parse(ratetxt.Text);
                            rate = Math.Round(rate, 2);
                            amount = (rate * (fullWeight - custWeight));
                            amount = Math.Round(amount, 2);
                            amounttxt.Text = "Rs. " + amount.ToString();
                            ratetxt2.Text = "x " + rate.ToString();
                            netWeighttxt2.Text = (fullWeight - custWeight).ToString() + " Kg";
                        }
                        else
                        {
                            Response.Write("<script>alert('! Customize Weight exceeds Wastage Weight');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('! Full Weight and Net Weight are same');</script>");
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('!Something Wrong');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();

                string paymentType = DropDownList1.SelectedItem.Value;

            double custWeight = 0;
                if (paymentType == "For-NetWeight")
                {
                    rate = float.Parse(ratetxt.Text);
                    rate = Math.Round(rate, 2);
                    amount = (rate * NetWeigth);
                    amount = Math.Round(amount, 2);
                }
                else if (paymentType == "Customize-Weight")
                {  
                   custWeight = double.Parse(custWeighttxt.Text);
                   rate = float.Parse(ratetxt.Text);
                   rate = Math.Round(rate, 2);
                   amount = (rate * (fullWeight - custWeight));
                   amount = Math.Round(amount, 2);                    
                }
                
                string dataInsert = "insert into Calculate(billId,date,vehicalNumber,supplierName,material,washStatus,acceptedBag,netWeight,amount,rate,readStatus,submitStatus,custNetWeight) values(@billId,@date,@vehicalNumber,@supplierName,@material,@washStatus,@acceptedBag,@netWeight,@amount,@rate,@readStatus,@submitStatus,@custNetWeight)";
                SqlCommand cmd = new SqlCommand(dataInsert, cnn);
                cmd.Parameters.AddWithValue("@billId", billId);
                cmd.Parameters.AddWithValue("@date", Date);
                cmd.Parameters.AddWithValue("@vehicalNumber", VehicleNumber);
                cmd.Parameters.AddWithValue("@supplierName", SupplierName);
                cmd.Parameters.AddWithValue("@material", Material);
                cmd.Parameters.AddWithValue("@washStatus", WashStatus);
                cmd.Parameters.AddWithValue("@acceptedBag", AcceptedBag);
                cmd.Parameters.AddWithValue("@netWeight", NetWeigth);
                cmd.Parameters.AddWithValue("@amount", amount);
                cmd.Parameters.AddWithValue("@rate", rate);
                cmd.Parameters.AddWithValue("@readStatus", "Un Read");
                cmd.Parameters.AddWithValue("@submitStatus", "false");
                cmd.Parameters.AddWithValue("@custNetWeight", (fullWeight - custWeight));

                Response.Write("<script>alert('Saved & Details sent to Assistant');location.href='StockListView.aspx'</script>");

                string updateReadStatus = "update material set submitStatus='true' where billId='" + billId + "'";
                SqlCommand cmd19 = new SqlCommand(updateReadStatus, cnn);
                cmd19.ExecuteNonQuery();

                cmd.ExecuteNonQuery();
                cnn.Close();

                ratetxt.Text = ""; ratetxt2.Text = ""; materialtxt2.Text = ""; washStatustxt2.Text = ""; acceptBagtxt2.Text = ""; netWeighttxt2.Text = "";
                amounttxt.Text = "";

                datetxt.Text = "";
                vehicleNumbertxt.Text = "";
                sellerNametxt.Text = "";
                materialtxt.Text = "";
                washStatustxt.Text = "";
                fullWeighttxt.Text = "";
                sampleWeighttxt.Text = "";
                wastageWeighttxt.Text = "";
                netWeighttxt.Text = "";
                volumetxt.Text = "";
                sandWeighttxt.Text = "";
                averageMoisturetxt.Text = "";
                coirWeighttxt.Text = "";
                checkedBagtxt.Text = "";
                rejectedBagtxt.Text = "";
                sampleWastagetxt.Text = "";
                billNumtxt.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('!Something Wrong');</script>");
            }

        }
    }
}
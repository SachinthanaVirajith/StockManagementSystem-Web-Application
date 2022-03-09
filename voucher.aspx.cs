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
    public partial class voucher : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private float AdvancePayment;
        private float Tax;
        private float GrossAmount;
        private float NetAmount;
        protected void Page_Load(object sender, EventArgs e)
        {         
            if (!Page.IsPostBack)
            {
                txtChqNo.Enabled = false;
            }
            SqlConnection con = new SqlConnection(sqlcon);
            con.Open();
            int billId = Convert.ToInt32(Session["SelectedId"]);
            SqlCommand cmd = new SqlCommand("Select * from Calculate where billId='" + billId + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            billNotxt.Text = dr[0].ToString();
            VoucherNo.Text = dr[1].ToString();
            Date.Text = dr[12].ToString();
            VehicleNo.Text = dr[2].ToString();
            SupName.Text = dr[3].ToString();
            Material.Text = dr[4].ToString();
            Status.Text = dr[5].ToString();
            Unit.Text = dr[6].ToString() + " Bags ";
            Quantity.Text = dr[7].ToString() + " Kg ";
            GrossAmt.Text = dr[8].ToString();
            Rate.Text = dr[9].ToString();
            cutNetWeighttxt.Text = dr[13].ToString();
            dr.Close();
            con.Close();

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            txtChqNo.Enabled = CheckBox2.Checked;
        }
        protected void BtnPrint_Click(object sender, EventArgs e)
        {
            try
            {
              
                String status = "Paid";
                int billId = Convert.ToInt32(Session["SelectedId"]);

                this.AdvancePayment = float.Parse(txtredc.Text);
                this.Tax = float.Parse(txtadd.Text);
                this.GrossAmount = float.Parse(GrossAmt.Text);
                this.NetAmount = (GrossAmount + Tax - (AdvancePayment));

                    SqlConnection cnn = new SqlConnection(sqlcon);
                    cnn.Open();
                    String add = "Insert into asst(voucherId,billId,date,supplierName,vehicalNumber,material,washStatus,acceptedBag,netWeight,paymentMethod,chequeNumber,rate,netAmount,paidStatus,loadStatus,custNetWeight,description1,description2,addition,substraction,grossAmount) values(@voucherId,@billId,@date,@supplierName,@vehicalNumber,@material,@washStatus,@acceptedBag,@netWeight,@paymentMethod,@chequeNumber,@rate,@netAmount,@paidStatus,@loadStatus,@custNetWeight,@description1,@description2,@addition,@substraction,@grossAmount)";
                    SqlCommand cmd = new SqlCommand(add, cnn);
                    cmd.Parameters.AddWithValue("@voucherId", Convert.ToInt32(VoucherNo.Text));
                    cmd.Parameters.AddWithValue("@billId", billId);
                    cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(Date.Text));
                    cmd.Parameters.AddWithValue("@supplierName", SupName.Text);
                    cmd.Parameters.AddWithValue("@vehicalNumber", VehicleNo.Text);
                    cmd.Parameters.AddWithValue("@material", Material.Text);
                    cmd.Parameters.AddWithValue("@washStatus", Status.Text);
                    cmd.Parameters.AddWithValue("@acceptedBag", Unit.Text);
                    cmd.Parameters.AddWithValue("@netWeight", Quantity.Text);
                    cmd.Parameters.AddWithValue("@custNetWeight", cutNetWeighttxt.Text);
                    if (CheckBox1.Checked)
                    {
                        cmd.Parameters.AddWithValue("@paymentMethod", "Cash");
                    }
                    else if (CheckBox2.Checked)
                    {
                        cmd.Parameters.AddWithValue("@paymentMethod", "Cheque");
                    }
                    cmd.Parameters.AddWithValue("@chequeNumber", txtChqNo.Text);
                    cmd.Parameters.AddWithValue("@rate", float.Parse(Rate.Text));
                    cmd.Parameters.AddWithValue("@grossAmount", float.Parse(GrossAmt.Text));
                    cmd.Parameters.AddWithValue("@description1", descadd.Text);
                    cmd.Parameters.AddWithValue("@description2", descreduct.Text);
                    cmd.Parameters.AddWithValue("@addition", float.Parse(txtadd.Text));
                    cmd.Parameters.AddWithValue("@substraction", float.Parse(txtredc.Text));
                    cmd.Parameters.AddWithValue("@netAmount", NetAmount);
                    cmd.Parameters.AddWithValue("@paidStatus", status);
                    cmd.Parameters.AddWithValue("@loadStatus", "false");
                    
                    
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Saved & Message sent to QC!');</script>");

                    NetAmt.Text = "Rs. " + NetAmount.ToString();

                    string updateReadStatus = "update calculate set submitStatus='true' where billId='" + billId + "'";
                    SqlCommand cmd2 = new SqlCommand(updateReadStatus, cnn);
                    cmd2.ExecuteNonQuery();
                    cnn.Close();
                      
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('No advance/ tax selected or already saved!');</script>");             
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int billId1 = Convert.ToInt32(Session["SelectedId"]);
            Session["billId"] = billId1;

            Response.Redirect("print.aspx");
        }
    }
}
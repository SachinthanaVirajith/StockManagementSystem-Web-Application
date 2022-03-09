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
    public partial class recorrectionForm : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        int billId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            billId = int.Parse(billNotxt.Text.ToString());

            try
            {
              
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();

                SqlCommand cmd04 = new SqlCommand();
                cmd04.CommandText = "select material,wash,fullWeight from material where billId='" + billId + "'";
                cmd04.Connection = cnn;
                SqlDataReader rd = cmd04.ExecuteReader();

                string material = "";
                string washStatus = "";
                double fullWeight = 0;
                double totalWeight = 0;

                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        material = rd[0].ToString();
                        washStatus = rd[1].ToString();
                        fullWeight = double.Parse(rd[2].ToString());
                    }
                }
                rd.Close();
                string getNetWeight = "select netWeight from stock where material='" + material + "' and wash='" + washStatus + "'";
                SqlCommand cmd05 = new SqlCommand(getNetWeight, cnn);
                totalWeight = double.Parse(cmd05.ExecuteScalar().ToString());
                totalWeight = Math.Round((totalWeight - fullWeight), 2);

                string updateNetWeight = "update stock set netWeight='" + totalWeight + "'where material='" + material + "' and wash='" + washStatus + "'";
                SqlCommand cmd06 = new SqlCommand(updateNetWeight, cnn);
                cmd06.ExecuteNonQuery();


                string deleteBill01 = "delete from material where billId='" + billId + "'";
                SqlCommand cmd = new SqlCommand(deleteBill01, cnn);
                cmd.ExecuteNonQuery();

                string deleteBill02 = "delete from Calculate where billId='" + billId + "'";
                SqlCommand cmd02 = new SqlCommand(deleteBill02, cnn);
                cmd02.ExecuteNonQuery();

                string deleteBill03 = "delete from asst where billId='" + billId + "'";
                SqlCommand cmd03 = new SqlCommand(deleteBill03, cnn);
                cmd03.ExecuteNonQuery();

                cnn.Close();

                string script2 = "alert(\"Bill Removed\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Entered Bill Number does not exists\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
        }

        //Addition and Substraction from stock

        double value = 0;
        string material = "";
        string washStatus = "";
        double selectedValue = 0;
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                value = double.Parse(TextBox3.Text);
                material = DropDownList2.SelectedItem.Value;
                washStatus = DropDownList1.SelectedItem.Value;

                CalculationAddition(value, material, washStatus);
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Something Wrong !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                value = double.Parse(TextBox3.Text);
                material = DropDownList2.SelectedItem.Value;
                washStatus = DropDownList1.SelectedItem.Value;

                CalculationSubstraction(value, material, washStatus);
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Something Wrong !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        public void CalculationAddition(double value, string material, string washStatus)
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            SqlCommand cmd = new SqlCommand("select netWeight from stock where material='" + material + "' and wash='" + washStatus + "'", cnn);
            selectedValue = double.Parse(cmd.ExecuteScalar().ToString());

            double newValue = selectedValue + value;

            SqlCommand cmd2 = new SqlCommand("update stock set netWeight='" + newValue + "' where material='" + material + "' and wash='" + washStatus + "'", cnn);
            cmd2.ExecuteNonQuery();
            TextBox3.Text = "";

            SqlCommand cmd3 = new SqlCommand("insert into productionHistory(material,washStatus,date,quantity,type) values(@material,@washStatus,@date,@quantity,@type)", cnn);
            cmd3.Parameters.AddWithValue("@material", material);
            cmd3.Parameters.AddWithValue("@washStatus", washStatus);
            cmd3.Parameters.AddWithValue("@date", DateTime.Now);
            cmd3.Parameters.AddWithValue("@quantity", value);
            cmd3.Parameters.AddWithValue("@type", "Re Correction (+)");
            cmd3.ExecuteNonQuery();
            cnn.Close();

            string script1 = "alert(\"Sucessfully Added to the Stock!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
            "ServerControlScript", script1, true);
        }

        public void CalculationSubstraction(double value, string material, string washStatus)
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            SqlCommand cmd = new SqlCommand("select netWeight from stock where material='" + material + "' and wash='" + washStatus + "'", cnn);
            selectedValue = double.Parse(cmd.ExecuteScalar().ToString());

            double newValue;
            if (selectedValue == 0)
            {
                string script2 = "alert(\"Stock is Empty!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
            else if (value > selectedValue)
            {
                string script2 = "alert(\"Not Enough Stock To Reduct!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
            else if(selectedValue >= value)
            {
                newValue = selectedValue - value;
                SqlCommand cmd2 = new SqlCommand("update stock set netWeight='" + newValue + "' where material='" + material + "' and wash='" + washStatus + "'", cnn);
                cmd2.ExecuteNonQuery();
                TextBox3.Text = "";
            }

            SqlCommand cmd3 = new SqlCommand("insert into productionHistory(material,washStatus,date,quantity,type) values(@material,@washStatus,@date,@quantity,@type)", cnn);
            cmd3.Parameters.AddWithValue("@material", material);
            cmd3.Parameters.AddWithValue("@washStatus", washStatus);
            cmd3.Parameters.AddWithValue("@date", DateTime.Now);
            cmd3.Parameters.AddWithValue("@quantity", value);
            cmd3.Parameters.AddWithValue("@type", "Re Correction (-)");
            cmd3.ExecuteNonQuery();
            cnn.Close();

            string script1 = "alert(\"Sucessfully Reduct from Stock!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
            "ServerControlScript", script1, true);
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            try
            {
                if (keywordtxt.Text == "tcpproduction")
                {
                    SqlConnection cnn = new SqlConnection(sqlcon);
                    cnn.Open();

                    string deleteTable = "delete FROM productionHistory";
                    SqlCommand cmd = new SqlCommand(deleteTable, cnn);
                    cmd.ExecuteNonQuery();
                    cnn.Close();

                    string script1 = "alert(\"Reset Production History!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script1, true);
                }
                else
                {
                    string script1 = "alert(\"Invalid Keyword!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script1, true);
                }
            }
            catch(Exception ex)
            {
                string script2 = "alert(\"Something Wrong !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script2, true);
            }
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Managerdash.aspx");
        }
    }
}
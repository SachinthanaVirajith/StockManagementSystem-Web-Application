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
    public partial class productionHistory : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public int materialNum;
        public string material;
        public string washStatus;
        public int year;
        public int month;
        public int day;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

            }
            else
            {
                Response.Redirect("Userlogin.aspx");
            }

            if (!IsPostBack)
            {
                cascadingdropdown();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                materialNum = Convert.ToInt32(materialtxt.SelectedItem.Value);
                washStatus = washStatustxt.SelectedItem.Value;

                if (materialNum == 1)
                {
                    material = "7c";
                }
                if (materialNum == 2)
                {
                    material = "10c";
                }
                if (materialNum == 3)
                {
                    material = "Coco-peat";
                }
                if (materialNum == 4)
                {
                    material = "All";
                }


                DateTime startDate = DateTime.Parse(startDatetxt.Text);
                DateTime endDate = DateTime.Parse(endDatetxt.Text);

                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();

                SqlCommand cmd = new SqlCommand();

                if (material == "All")
                {
                    cmd.CommandText = "select material,washStatus,date,quantity,type from productionHistory where date >'" + startDate + "' and date < '" + endDate + "'";
                }
                else
                {
                    cmd.CommandText = "select material,washStatus,date,quantity,type from productionHistory where material='" + material + "' and washStatus='" + washStatus + "' and date>'" + startDate + "' and date < '" + endDate + "'";
                }
                cmd.Connection = cnn;

                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='0' width=1200px");
                table.Append("<tr><th>Material</th> <th>Wash Status</th> <th>Date</th> <th>Quentity</th> <th>Type</th>");
                table.Append("<tr>");

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                cnn.Close();
            }
            catch (Exception ex)
            {
                string script1 = "alert(\"Error!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                "ServerControlScript", script1, true);
            }
        }

        protected void cascadingdropdown()
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select * from dropdownMaterial", cnn);
            cmd.CommandType = System.Data.CommandType.Text;
            materialtxt.DataSource = cmd.ExecuteReader();
            materialtxt.DataTextField = "material";
            materialtxt.DataValueField = "materiaId";
            materialtxt.DataBind();
            materialtxt.Items.Insert(0, new ListItem("--Select Material--", "0"));
        }

        protected void materialtxt_SelectedIndexChanged1(object sender, EventArgs e)
        {
            washStatustxt.Enabled = true;
            int selectedMaterial = Convert.ToInt32(materialtxt.SelectedValue);
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            if (selectedMaterial == 4)
            {
                washStatustxt.Enabled = false;
            }
        }

        protected void washStatustxt_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Managerdash.aspx");
        }
    }
}
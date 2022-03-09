using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class Managerdash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                Label1.Text = (Session["UserID"].ToString());
            }
            else
            {
                Response.Redirect("Userlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Managerdash.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('You are logging out......!');location.href='UserLogin.aspx'</script>");
            Session.RemoveAll();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockListView.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockStatus.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockHistory.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("productionHistory.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("billSearch.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("recorrectionForm.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCPStockManagementSystem
{
    public partial class Qcdash : System.Web.UI.Page
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
        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("GetNewStock.aspx");
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ProductReduction.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("QCfinalReport.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('You are logging out......!');location.href='UserLogin.aspx'</script>");
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Qcdash.aspx");
        }
    }
}
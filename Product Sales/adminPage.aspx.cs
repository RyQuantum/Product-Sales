using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class adminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((String)Session["isAdmin"] == "true")
            {
                //success
            }
            else
            {
                Response.Redirect("adminLogin.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        { }
    }
}
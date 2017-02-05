using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class addUser : System.Web.UI.Page
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
        protected void Binsert_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceInsertUser.Insert();
        }
    }
}
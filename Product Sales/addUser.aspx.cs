﻿using System;
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
            if ((String)Session["isAdmin"] == "Y")
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
            try
            {
                SqlDataSourceInsertUser.Insert();
                HttpContext.Current.Response.Write("<script>alert('Successfully Added product " + ins_Username.Text + "')</script>");

            }
            catch
            {
                HttpContext.Current.Response.Write("<script>alert('Not able to Added product " + ins_Username.Text + "')</script>");
            }
        }
    }
}
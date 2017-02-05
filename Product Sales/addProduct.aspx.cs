using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Product_Sales
{
    public partial class addProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((String)Session["isAdmin"] == "true")
            {
                //success
            }
            else {
                Response.Redirect("adminLogin.aspx");
            }


        }
        protected void Binsert_Click(object sender, EventArgs e) 
        {
            try
            {
                SqlDataSourceInsertProduct.Insert();
                HttpContext.Current.Response.Write("<script>alert('Successfully Added product " + Insertname.Text + "')</script>");
                Insertname.Text = "";
                Insertprice.Text = "";
                Insertdiscount.Text = "";
                Insertcolor.Text = "";
                Insertsize.Text = "";
                Insertcatogory.Text = "";
                Insertbrand.Text = "";
                Insertdescription.Text = "";
                Insertinfomation.Text = "";
                Insertrate.Text = "";
                InsertnumOfRate.Text = "";
                Insertreviews.Text = "";
                Inserttag.Text = "";
                Insertsku.Text = "";
            }
            catch{
                HttpContext.Current.Response.Write("<script>alert('Not able to Added product " + Insertname.Text + "')</script>");
            }

        }
    }
}
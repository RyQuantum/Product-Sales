using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class single : System.Web.UI.Page
    {
        
        String id = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=productSales;Integrated Security=True");
            conn.Open();

            id = Request.QueryString["id"];
            String sql = "update products set clickTime += 1 where id =";
            String sqlTop = "SELECT TOP (10) id, name, price, picture FROM products ORDER BY clickTime DESC";
            if (Session["cart"] == null)
            {
                Session["cart"] = new Dictionary<String, int>();
            }
            if (!this.IsPostBack)
            {
                DataSet ds = GetData(sqlTop + ";" + sql + id, conn);
                //DataSet ds = GetData(sqlTop, conn);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();

            }
        }
        protected DataSet GetData(String queryString, SqlConnection conn)
        {
            DataSet ds = new DataSet();
            try
            { 
                SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
                adapter.Fill(ds);
            }
            catch (Exception ex)
            {
            }
            return ds;
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Dictionary<String,int> cart = (Dictionary<String, int>)Session["cart"];
            if (cart.ContainsKey(id))
            {
                cart[id] += 1;
            } else
            {
                cart.Add(id, 1);
            }
            Session["cart"] = cart;
        }
    }
}

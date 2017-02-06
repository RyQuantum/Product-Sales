using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class products : System.Web.UI.Page
    {
        String sql = "select * from products ";
        String category = "";
        String brand = "";
        String color = "";
        String discount = "discount >= 0 ";
        int pageIndex = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                sql = "select * from products ";
                category = "";
                brand = "";
                color = "";
                discount = "discount >= 0 ";
                pageIndex = 0;
            }
            int page = Convert.ToInt32(Request.QueryString["page"]) - 1;
            SqlConnection conn = new SqlConnection("Initial Catalog=ProductSales;Data Source=.;Integrated Security=true");
            String command = sql + "where id in ";
            if (!String.IsNullOrEmpty(Request.QueryString["Search"]))
            {
                String keyword = Request["Search"].ToString();
                command += "(select id from products where name like '%" + keyword + "%' or color like '%" + keyword + "%' or size like '%" + keyword + "%' or catogory like '%" + keyword + "%' or brand like '%" + keyword + "%' or description like '%" + keyword + "%' or tag like '%" + keyword + "%')";
            } else if (!String.IsNullOrEmpty(Request.QueryString["Category"]))
            {
                String category = Request.QueryString["Category"].ToString();
                command += "(select id from products where catogory = '" + category + "')";
                All.Checked = Men.Checked = Women.Checked = Kids.Checked = false;
                switch (category)
                {
                    case "Men":
                        Men.Checked = true;
                        break;
                    case "Women":
                        Women.Checked = true;
                        break;
                    case "Kids":
                        Kids.Checked = true;
                        break;
                }
            }
            else 
            {
                if(!String.IsNullOrEmpty(Request.QueryString["Type"]) ){
                    command += "(select id from products where tag like '%"+ Request.QueryString["Type"].ToString() + "%')";
                } else if (!String.IsNullOrEmpty(Request.QueryString["Brand"])) {
                    command += "(select id from products where brand like '%" + Request.QueryString["Brand"].ToString() + "%')";
                } else if (!String.IsNullOrEmpty(Request.QueryString["Price"])) {
                    String level = Request.QueryString["Price"].ToString();
                    switch (level)
                    {
                        case "lvl1":
                            command += "(select id from products where price < 2000)";
                            break;
                        case "lvl2":
                            command += "(select id from products where price >= 2000 and price < 5000)";
                            break;
                        case "lvl3":
                            command += "(select id from products where price >= 5000 and price < 10000)";
                            break;
                        case "lvl4":
                            command += "(select id from products where price >= 10000)";
                            break;
                    }
                } else
                {
                    command += "(select id from products)";
                }
            }
            command += "and " + discount;
            if (category != "")
            {
                command += "and " + category;
            } 
            if (brand != "")
            {
                command += "and " + brand;
            }
            if (color != "")
            {
                command += "and " + color;
            }
            System.Diagnostics.Debug.WriteLine(command);
            //Session["command"] = command;
            SqlDataAdapter sda = new SqlDataAdapter(command, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            PagedDataSource objPage = new PagedDataSource();
            objPage.DataSource = ds.Tables[0].DefaultView;
            objPage.AllowPaging = true;
            objPage.PageSize = 6;
            objPage.CurrentPageIndex = pageIndex;
            Session["pageIndex"] = pageIndex;
            Session["lastPage"] = objPage.PageCount;
            Repeater1.DataSource = objPage;
            Repeater1.DataBind();
            
            DataTable table = new DataTable();
            DataColumn col = new DataColumn("num", typeof(int));
            table.Columns.Add(col);
            DataRow row;
            for (int i = 1; i <= objPage.PageCount; i++)
            {
                row = table.NewRow();
                row["num"] = i;
                table.Rows.Add(row);
            }
            Repeater2.DataSource = table;
            Repeater2.DataBind();
        }

        
        
        protected void CategoryChanged(object sender, EventArgs e)
        {
            category = "catogory = '' or ";
            if (Women.Checked)
            {
                category += "catogory = 'Women' or ";
            }
            if (Men.Checked)
            {
                category += "catogory = 'Men' or ";
            }
            if (Kids.Checked)
            {
                category += "catogory = 'Kids' or ";
            }
            category = category.Substring(0, category.Length - 3);
            if (All.Checked)
            {
                category = "";
            }
            Page_Load(sender, e);
        }

        protected void BrandChanged(object sender, EventArgs e)
        {
            brand = "";
            if (Kurtas.Checked)
            {
                brand += "brand = 'Women' or ";
            }
            if (Sonata.Checked)
            {
                brand += "brand = 'Sonata' or ";
            }
            if (Titan.Checked)
            {
                brand += "brand = 'Titan' or ";
            }
            if (Casio.Checked)
            {
                brand += "brand = 'Casio' or ";
            }
            if (Omax.Checked)
            {
                brand += "brand = 'Omax' or ";
            }
            if (Shree.Checked)
            {
                brand += "brand = 'Shree' or ";
            }
            if (brand.Length > 0)
            {
                brand = brand.Substring(0, brand.Length - 3);
            }
            Page_Load(sender, e);
        }

        protected void ColorClick(object sender, EventArgs e)
        {
            color = "color like '%" + ((LinkButton)sender).ID + "%' ";
            Page_Load(sender, e);
        }

        protected void DiscountChanged(object sender, EventArgs e)
        {
            discount = "discount >=" + ((RadioButton)sender).ID.Substring(8) + " ";
            Page_Load(sender, e);
        }
        
        protected void PageClick(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(((LinkButton)sender).ID);
            var page = ((LinkButton)sender).Text;
            pageIndex = Convert.ToInt32(page) - 1;
            Page_Load(sender, e);
        }

        protected void FirstPage_Click(object sender, EventArgs e)
        {
            pageIndex = 0;
            Page_Load(sender, e);
        }

        protected void LastPage_Click(object sender, EventArgs e)
        {
            pageIndex = Convert.ToInt32(Session["lastPage"]) - 1;
            Page_Load(sender, e);
        }
    }
}
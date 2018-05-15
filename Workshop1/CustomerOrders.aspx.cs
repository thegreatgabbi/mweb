﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // grab the query string
        string name = Request.QueryString["name"];
        // select * from Orders where CustomerName = name
        FoodOrdersEntities context = new FoodOrdersEntities();
        var query = from x in context.Orders
                    where x.CustomerName == name
                    select x;

        List<Order> orderList = query.ToList<Order>();
        // if rows returned = null
        if (orderList.Count == 0)
        {
            //  label.text = "No orders found for name"
            Label1.Text = ("No orders found for " + name);
        }
        else
        {
            // use EF framework as a datasource for the gridview
            GridView_CustomerOrders.DataSource = orderList;
            GridView_CustomerOrders.DataBind();
        }
    }

    protected void GridView_CustomerOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int row = Convert.ToInt32(GridView_CustomerOrders.DataKeys[e.RowIndex].Value);
        BusinessLogic.DeleteRow(row);
        // Refreshing the page will create a new entity object
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}
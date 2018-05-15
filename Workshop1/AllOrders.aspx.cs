﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FoodOrdersEntities context = new FoodOrdersEntities();
        var query = from x in context.Orders select x;

        List<Order> orderList = query.ToList<Order>();
        // if rows returned = null
        if (orderList.Count == 0)
        {
            //  label.text = "No orders found for name"
            Label1.Text = ("No orders found.");
        }
        else
        {
            // use EF framework as a datasource for the gridview
            GridView1.DataSource = orderList;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int row = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BusinessLogic.DeleteRow(row);
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}
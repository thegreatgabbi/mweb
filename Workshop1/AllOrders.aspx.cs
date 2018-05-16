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
        if (!IsPostBack)
        {
            FoodOrdersEntities context = new FoodOrdersEntities();
            var query = from x in context.Orders select x;
            List<Order> orderList = query.ToList();
            
            // if rows returned = null
            if (orderList.Count == 0)
            {
                Label1.Text = ("No orders found.");
            }
            else
            {
                BindGrid();
            }
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int row = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BusinessLogic.DeleteRow(row);
        BindGrid();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // set the row being edited
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int id = Convert.ToInt32(row.Cells[0].Text);
        string cname = (row.Cells[1].Controls[0] as TextBox).Text;
        string dish = (row.FindControl("DropDownList1") as DropDownList).SelectedValue;
        string size = (row.FindControl("DropDownList2") as DropDownList).SelectedValue;
        bool chili = (row.Cells[4].Controls[0] as CheckBox).Checked;
        bool pepper = (row.Cells[5].Controls[0] as CheckBox).Checked;
        bool moresalt = (row.Cells[6].Controls[0] as CheckBox).Checked;
        // pass all the details
        BusinessLogic.UpdateRow(id, cname, dish, size, chili, pepper, moresalt);
        GridView1.EditIndex = -1;

        BindGrid();
    }
    private void BindGrid()
    {
        // use EF framework as a datasource for the gridview
        GridView1.DataSource = BusinessLogic.GetSummaryList();
        GridView1.DataBind();
    }
}
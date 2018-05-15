using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllOrders : System.Web.UI.Page
{
    private void BindGrid()
    {
        // use EF framework as a datasource for the gridview
        GridView1.DataSource = BusinessLogic.GetSummaryList();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsCallback)
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
        GridView1.DataBind();
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
}
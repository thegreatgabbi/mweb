using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["name"] != null)
            {
                string name = Request.QueryString["name"];
                List <Order> orders = BusinessLogic.GetNameList(name);

                if (orders.Count == 0)
                {
                    Label1.Text = ("No orders found for " + name + ".");
                } else
                {
                    BindGrid();
                }
            }
            else
            {
                BindGrid();
            }
        }
    }

    protected void GridView_CustomerOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int row = Convert.ToInt32(GridView_CustomerOrders.DataKeys[e.RowIndex].Value);
        BusinessLogic.DeleteRow(row);
        BindGrid();
    }

    protected void GridView_CustomerOrders_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView_CustomerOrders.EditIndex = e.NewEditIndex;
        BindGrid();

    }
    protected void GridView_CustomerOrders_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_CustomerOrders.EditIndex = -1;
        BindGrid();
    }

    protected void GridView_CustomerOrders_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView_CustomerOrders.Rows[e.RowIndex];
        int id = Convert.ToInt32(row.Cells[0].Text);
        string cname = (row.Cells[1].Controls[0] as TextBox).Text;
        string dish = (row.FindControl("DropDownList1") as DropDownList).SelectedValue;
        string size = (row.FindControl("DropDownList2") as DropDownList).SelectedValue;
        bool chili = (row.Cells[4].Controls[0] as CheckBox).Checked;
        bool pepper = (row.Cells[5].Controls[0] as CheckBox).Checked;
        bool moresalt = (row.Cells[6].Controls[0] as CheckBox).Checked;
        // pass all the details
        BusinessLogic.UpdateRow(id, cname, dish, size, chili, pepper, moresalt);
        GridView_CustomerOrders.EditIndex = -1;

        BindGrid();
    }
    private void BindGrid()
    {
        string name = Request.QueryString["name"];
        if (name != null)
        {
            GridView_CustomerOrders.DataSource = BusinessLogic.GetNameList(name);
        }
        else
        {
            GridView_CustomerOrders.DataSource = BusinessLogic.GetSummaryList();
        }
        GridView_CustomerOrders.DataBind();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Submit_Click(object sender, EventArgs e)
    {
        FoodOrdersEntities context = new FoodOrdersEntities();

        string name = TextBox_Name.Text;
        string dish = DropDownList_Food.Text;
        string size = RadioButtonList_Size.Text;

        Order o = new Order();
        o.CustomerName = name;
        o.Dish = dish;
        o.Size = size;
        // check if each item in CheckBoxList is selected
        if (CheckBoxList_Spices.Items[0].Selected == true)
        {
            o.Chili = true;
        }
        if (CheckBoxList_Spices.Items[1].Selected == true)
        {
            o.Pepper = true;
        }
        if (CheckBoxList_Spices.Items[2].Selected == true)
        {
            o.MoreSalt = true;
        }

        // validate form
        if (TextBox_Name.Text == "" ||
            DropDownList_Food.SelectedIndex == 0 ||
            RadioButtonList_Size.SelectedIndex == -1)
        {
            Label_Result.Text = "Please ensure all fields are filled.";
        } else
        {
            context.Orders.Add(o);
            context.SaveChanges();

            Label_Result.Text = "Success!";
        }



    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (TextBox_Name.Text == "")
        {
            Label_Result.Text = "Please enter a name.";
        }
        else
        {
            Response.Redirect("/CustomerOrders.aspx?name=" + TextBox_Name.Text);
        }
    }

}
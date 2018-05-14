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
        string name = TextBox_Name.Text;
        string dish = DropDownList_Food.Text;
        string size = RadioButtonList_Size.Text;
        string spices = "";

        // check if each item in CheckBoxList is selected
        foreach (ListItem item in CheckBoxList_Spices.Items)
        {
            if (item.Selected)
            {
                spices += (item.Text + " ");
            }
        }

        // Change text of Result
        Label_Result.Text = String.Format("{0} wants a {1} {2} with {3}.", name, size, dish, spices);
    }
}
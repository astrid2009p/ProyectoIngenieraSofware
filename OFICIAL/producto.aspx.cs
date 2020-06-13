using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class producto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        lblTipo.Text = ("El producto es ") + ddlTipo.SelectedItem.ToString();
        lblCant.Text = (" la cantidad es ")+ ddlCant.SelectedItem.ToString()+(" bolsas de 100 unidades");
        btnOrdenP.Visible = true;
    }

    protected void btnOrdenP_Click(object sender, EventArgs e)
    {
        Response.Redirect("ordenPro.aspx");
    }
}
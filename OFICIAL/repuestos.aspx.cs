using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class repuestos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOrdenP_Click(object sender, EventArgs e)
    {
        Response.Redirect("ordenPro.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblTipor.Text = ("El producto es ") + ddlRep.SelectedItem.ToString();
        lblCantr.Text = (" la cantidad es ") + ddlCant.SelectedItem.ToString() + ("  unidades");
        btnOrdenP.Visible = true;
    }
}
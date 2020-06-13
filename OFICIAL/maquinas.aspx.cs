using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class maquinas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblTipoM.Text = ("El producto es ") +ddlMaquina.SelectedItem.ToString();
        lblCantM.Text = (" la cantidad es ") + ddlCant.SelectedItem.ToString() + (" unidades");
        btnOrdenP.Visible = true;
    }

    protected void btnOrdenP_Click(object sender, EventArgs e)
    {
        Response.Redirect("ordenPro.aspx");
    }
}
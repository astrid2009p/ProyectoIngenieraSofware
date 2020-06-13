using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cerrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }

    protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
    {

    }
}
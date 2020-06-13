using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class verificar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"].Equals("admin"))
        {
            Response.Redirect("admin.aspx");
        }
        else if (Session["usuario"].Equals("Astrid Palencia"))
        {
            Response.Redirect("user.aspx");
        }
        else if (Session["usuario"].Equals("rene")) {
            Response.Redirect("tecnico.aspx");
        }
    }
}
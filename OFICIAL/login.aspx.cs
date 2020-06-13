using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        try
        {
            DataSetTableAdapters.usersTableAdapter obj = new DataSetTableAdapters.usersTableAdapter();
            String userPass = obj.Login(txtUser.Text, txtPass.Text);
            if (userPass != null)
            {
                Session["usuario"] = userPass;
                Response.Redirect("verificar.aspx");

            }
            else {
                l1.Text = "usuario o contraseña incorrecta" +
                    " "+"Nota: Si es nuevo usuario en el sistema comunicarse con el administrador" ;
            }

        }
        catch {
            
            l1.Text = "usuario o contraseña incorrecta"+"adios";
        }
    }
}
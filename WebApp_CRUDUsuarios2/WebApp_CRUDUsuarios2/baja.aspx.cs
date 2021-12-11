using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_CRUDUsuarios2
{
    public partial class baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            SqlDelete.DeleteParameters["nombre"].DefaultValue = txtUsername.Text;
            int cant;
            cant = SqlDelete.Delete();
            if (cant == 1)
                lblMessage.Text = "Se borró el usuario";
            else
                lblMessage.Text = "No existe dicho nombre";
        }
    }
}
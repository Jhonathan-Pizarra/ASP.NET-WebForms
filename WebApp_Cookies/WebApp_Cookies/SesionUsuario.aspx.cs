using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class SesionUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            //Almacenamos las dos variables de sesion
            Session["usuario"] = txtUsername.Text;
            Session["clave"] = txtPassword.Text;
            //Redireccionamos a la siguiente pagina
            Response.Redirect("DatosSesion.aspx");
        }
    }
}
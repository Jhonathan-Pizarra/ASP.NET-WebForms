using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class MailPersistente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false) //En el método Load de la página verificamos si es la primera vez que pedimos la página (es decir que no se recarga por presionar el botón) y si existe la cookie, en dicho caso cargamos el contenido de la propiedad TextBox 
            {
                if (Request.Cookies["mail"] != null)
                {
                    txtMail.Text = Request.Cookies["mail"].Value;
                }
            }
        }

        //Luego de ingresar un mail en el control TextBox y presionar el botón Confirmar se crea una cookie llamada mail y almacena el valor ingresado en el control TextBox.
        //Seguidamente redirecciona a la página VerMailPersistente
        //Si Luego volvemos a ejecutar la página MailPersistente veremos que el control TextBox aparece inicializado con el último mail ingresado (Aunque apaguemos y prendamos la máquina el último mail aparecerá dentro del control)
        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("mail", txtMail.Text);
            cookie1.Expires = new DateTime(2021, 12, 11);
            Response.Cookies.Add(cookie1);
            Response.Redirect("VerMailPersistente.aspx");
        }
        //una cookie es muy útil si queremos almacenar datos de configuración de un sitio para cada visitante.
    }

}
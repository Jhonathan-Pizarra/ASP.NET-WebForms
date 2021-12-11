using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Dinamicas
{
    public partial class FormularioCaptcha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            if (Session["codigo"].ToString() == this.txtCaptcha.Text)
            {
                lblRespuesta.Text = "Ingresó el codigo correcto";
            }
            else
            {
                lblRespuesta.Text = "Incorrecto";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class Persistente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("edad", txtCookieEdad.Text);
            cookie1.Expires = new DateTime(2021, 12, 11);
            Response.Cookies.Add(cookie1);
            lblRespuesta.Text = "Se creó la cookie";
        }
    }
}
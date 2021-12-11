using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class DatosSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = this.Session["usuario"].ToString();
            lblPassword.Text = this.Session["clave"].ToString();
        }
    }
}
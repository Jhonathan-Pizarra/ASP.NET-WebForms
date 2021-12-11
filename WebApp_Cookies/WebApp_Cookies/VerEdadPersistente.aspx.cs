using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class EdadPersistente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["edad"] == null)
            {
                lblRespuesta.Text = "No existe la cookie edad";
            }
            else
            {
                lblRespuesta.Text = this.Request.Cookies["edad"].Value;
            }
        }
    }
}
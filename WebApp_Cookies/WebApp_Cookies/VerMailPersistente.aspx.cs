using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Cookies
{
    public partial class VerMailPersistenteaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["mail"] == null)
            {
                lblMail.Text = "No existe la cookie email";
            }
            else
            {
                lblMail.Text = this.Request.Cookies["mail"].Value;
            }
        }
    }
}
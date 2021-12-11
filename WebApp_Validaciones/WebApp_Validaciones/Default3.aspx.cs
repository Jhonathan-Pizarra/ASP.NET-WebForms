using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Validaciones
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar3_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("Default4.aspx");
            }
        }
    }
}
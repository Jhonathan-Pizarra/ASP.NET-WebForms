using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Validaciones
{
    public partial class Default5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmMail_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("Default6.aspx");
            }
        }
    }
}
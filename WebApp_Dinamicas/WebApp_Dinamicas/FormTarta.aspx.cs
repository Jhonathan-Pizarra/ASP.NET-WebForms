using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Dinamicas
{
    public partial class FormTarta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarta_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("GraficarTarta.aspx?v1=" + this.txtValor1.Text +
                               "&v2=" + this.txtValor2.Text +
                               "&v3=" + this.txtValor3.Text);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class Calculadora4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar3_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(txtValor5.Text);
            int x2 = int.Parse(txtValor6.Text);
            lblMessage3.Text = "";
            int resultado;
            if (chkSumar.Checked)
            {
                resultado = x1 + x2;
                this.lblMessage3.Text = "La suma de los dos valores es:" + resultado + "<br>";
            }
            if (chkResta.Checked)
            {
                resultado = x1 - x2;
                lblMessage3.Text = lblMessage3.Text + "La diferencia de los dos valores es:" + resultado;
            }
        }
    }
}
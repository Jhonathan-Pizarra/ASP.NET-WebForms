using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class Calculadora3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar2_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(txtValor3.Text);
            int x2 = int.Parse(txtValor4.Text);
            int resultado = x1 + x2;
            if (rdSumar.Checked)
            {
                resultado = x1 + x2;
                lblMessage2.Text = " " + resultado;
            }
            else
                if (rdRestar.Checked)
            {
                resultado = x1 - x2;
                lblMessage2.Text = " " + resultado;
            }
        }
    }
}
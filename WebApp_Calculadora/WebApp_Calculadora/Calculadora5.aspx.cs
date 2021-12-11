using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class Calculadora5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar4_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(txtValor7.Text);
            int x2 = int.Parse(txtValor8.Text);
            lblMessage4.Text = "";
            if (lstOperaciones.Items[0].Selected)
            {
                int suma = x1 + x2;
                lblMessage4.Text = "La suma es:" + suma + "<br>";
            }
            if (lstOperaciones.Items[1].Selected)
            {
                int resta = x1 - x2;
                lblMessage4.Text += "La diferencia:" + resta + "<br>";
            }
            if (lstOperaciones.Items[2].Selected)
            {
                int multi = x1 * x2;
                lblMessage4.Text += "El producto:" + multi + "<br>";
            }
            if (lstOperaciones.Items[3].Selected)
            {
                int divi = x1 / x2;
                lblMessage4.Text += "La division:" + divi + "<br>";
            }
        }
    }
}
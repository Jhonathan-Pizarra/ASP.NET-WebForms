using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class Calculadora6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar5_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(txtValor9.Text);
            int x2 = int.Parse(txtValor10.Text);
            lblMessage5.Text = "";
            if (cbxOperaciones.Items[0].Selected)
            {
                int suma = x1 + x2;
                lblMessage5.Text = "La suma es:" + suma + "<br>";
            }
            else
                if (cbxOperaciones.Items[1].Selected)
            {
                int resta = x1 - x2;
                lblMessage5.Text = "La diferencia:" + resta + "<br>";
            }
            else
                    if (cbxOperaciones.Items[2].Selected)
            {
                int multi = x1 * x2;
                lblMessage5.Text = "El producto:" + multi + "<br>";
            }
            else
                        if (cbxOperaciones.Items[3].Selected)
            {
                int divi = x1 / x2;
                lblMessage5.Text = "La division:" + divi + "<br>";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class Calculadora2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(txtValor1.Text);
            int x2 = int.Parse(txtValor2.Text);
            int suma = x1 + x2;
            lblMessage.Text = ""+suma;
           
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Calculadora
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Debemos convertir a entero el contenido de la Label mediante el método estático Parse 
            int x = int.Parse(Label1.Text);
            x++; //Incrementamos en uno la variable x y la volvemos a mostrar en la Label
            Label1.Text = x.ToString();
        }
    }
}
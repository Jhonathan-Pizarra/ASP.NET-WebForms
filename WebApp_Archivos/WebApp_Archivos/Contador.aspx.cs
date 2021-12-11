using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Impprt
using System.IO;

namespace WebApp_Archivos
{
    public partial class Contador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(Server.MapPath(".") + "/contador.txt"))
            {
                StreamReader arch1 = new StreamReader(Server.MapPath(".") + "/contador.txt");
                string valor = arch1.ReadToEnd();
                int contador = int.Parse(valor);
                contador++;
                arch1.Close();
                StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/contador.txt");
                arch2.WriteLine(contador.ToString());
                arch2.Close();
                lblResultado.Text = contador.ToString();
            }
            else
            {
                StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/contador.txt");
                arch.WriteLine("1");
                arch.Close();
                lblResultado.Text = "1";
            }
        }
    }
}
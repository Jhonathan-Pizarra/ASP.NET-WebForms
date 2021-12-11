using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Importamos para usar archivos
using System.IO;

namespace WebApp_Archivos
{
    public partial class Carga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Cuando se presiona el botón confirmar procedemos a almacenar los datos del formulario en el archivo de texto
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true); //i existe los agregamos al final, en caso que no exista se crea el archivo.
            arch.WriteLine("Nombre:" + txtName.Text); //i existe los agregamos al final, en caso que no exista se crea el archivo.
            arch.WriteLine("<br>");
            arch.WriteLine("Pais:" + txtCountry.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("Comentarios<br>");
            arch.WriteLine(txtComment.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("<hr>");
            arch.Close();
            lblResponse.Text = "Datos Registrados";
        }
    }
}
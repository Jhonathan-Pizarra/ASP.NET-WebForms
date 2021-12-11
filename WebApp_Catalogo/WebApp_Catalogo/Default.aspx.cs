using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//improtamos para validar no repetidas
using System.IO;

namespace WebApp_Catalogo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (File.Exists(Server.MapPath(".") + "/imagenes/" + FileUpload1.FileName))
            {
                lblRespuesta.Text = "Existe un archivo con dicho nombre en el servidor";
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath(".") + "/" + FileUpload1.FileName);
                lblRespuesta.Text = "Archivo subido";
            }
            //FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" + FileUpload1.FileName);
            //lblRespuesta.Text = "Archivo subido";
            //Información sobre el archivo
            lblTamanio.Text = FileUpload1.PostedFile.ContentLength.ToString();
            lblNombre.Text = FileUpload1.FileName;
            lblTipo.Text = FileUpload1.PostedFile.ContentType;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Importamos el espacio de nombre que declara la clase Bitmap, Graphics, Font y SolidBrush
using System.Drawing;
//Importamos el espacio de nombre que declara la clase ImageFormat
using System.Drawing.Imaging;

namespace WebApp_Dinamicas
{
    public partial class HolaMudno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Creamos un objeto de la clase Bitmap
            Bitmap mapabit = new Bitmap(500, 300);
            Graphics lienzo;
            //Iicializamos la variable de tipo Graphics con el bitmap creado
            lienzo = Graphics.FromImage(mapabit);
            //Creamos una fuente
            Font fuente1 = new Font("Arial", 40);
            //Creamos un pincel
            SolidBrush pincel1 = new SolidBrush(Color.Red);
            //Graficamos dentro de la imagen
            lienzo.DrawString("Hola Mundo", fuente1, pincel1, 10, 10);
            //Enviamos la imagen al navegador que la solicitó
            mapabit.Save(Response.OutputStream, ImageFormat.Gif);
        }
    }
}
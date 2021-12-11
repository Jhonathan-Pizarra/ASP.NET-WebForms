using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Imagenes
using System.Drawing;
using System.Drawing.Imaging;

namespace WebApp_Dinamicas
{
    public partial class Captcha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap mapabit = new Bitmap(100, 40);
            Graphics lienzo;
            lienzo = Graphics.FromImage(mapabit);
            int nro;
            Random r = new Random();
            nro = r.Next(1, 10000);
            Font fuente1 = new Font("Arial", 22);
            SolidBrush pincel1 = new SolidBrush(Color.Red);
            lienzo.DrawString(nro.ToString(), fuente1, pincel1, 4, 4);
            //Dibujar lineas
            for (int f = 1; f <= 10; f++)
            {
                int x1 = r.Next(1, 100);
                int y1 = r.Next(1, 40);
                int x2 = r.Next(1, 100);
                int y2 = r.Next(1, 40);
                Pen lapiz1 = new Pen(Color.FromArgb(r.Next(1, 255), r.Next(1, 255), r.Next(1, 255)));
                lienzo.DrawLine(lapiz1, x1, y1, x2, y2);
            }
            Session["codigo"] = nro.ToString();
            mapabit.Save(Response.OutputStream, ImageFormat.Gif);
        }
    }
}
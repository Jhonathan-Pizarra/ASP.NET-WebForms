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
    public partial class GraficarTarta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap mapabit = new Bitmap(800, 600);
            Graphics lienzo;
            lienzo = Graphics.FromImage(mapabit);
            float valor1 = float.Parse(this.Request.QueryString["v1"]);
            float valor2 = float.Parse(this.Request.QueryString["v2"]);
            float valor3 = float.Parse(this.Request.QueryString["v3"]);
            float total = valor1 + valor2 + valor3;
            float grados1 = valor1 / total * 360;
            SolidBrush pincel1 = new SolidBrush(Color.Red);
            lienzo.FillPie(pincel1, 100, 100, 400, 400, 0, grados1);
            float grados2 = valor2 / total * 360;
            SolidBrush pincel2 = new SolidBrush(Color.Blue);
            lienzo.FillPie(pincel2, 100, 100, 400, 400, grados1, grados2);
            float grados3 = valor3 / total * 360;
            SolidBrush pincel3 = new SolidBrush(Color.Green);
            lienzo.FillPie(pincel3, 100, 100, 400, 400, grados1 + grados2, grados3);
            //Referencias
            lienzo.FillRectangle(pincel1, 600, 500, 20, 20);
            Font fuente = new Font("Arial", 10);
            lienzo.DrawString(valor1.ToString(), fuente, pincel1, 630, 500);
            lienzo.FillRectangle(pincel2, 600, 530, 20, 20);
            lienzo.DrawString(valor2.ToString(), fuente, pincel2, 630, 530);
            lienzo.FillRectangle(pincel3, 600, 560, 20, 20);
            lienzo.DrawString(valor3.ToString(), fuente, pincel3, 630, 560);
            mapabit.Save(Response.OutputStream, ImageFormat.Gif);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Usar graficos
using System.Drawing;
using System.Drawing.Imaging;

namespace WebApp_Dinamicas
{
    public partial class GraficarBarra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap mapabit = new Bitmap(800, 400);
            Graphics lienzo;
            lienzo = Graphics.FromImage(mapabit);
            float valor1 = float.Parse(this.Request.QueryString["v1"]);
            float valor2 = float.Parse(this.Request.QueryString["v2"]);
            float valor3 = float.Parse(this.Request.QueryString["v3"]);
            float mayor = this.RetornarMayor(valor1, valor2, valor3);
            float largo1 = valor1 / mayor * 400;
            SolidBrush pincel1 = new SolidBrush(Color.Red);
            lienzo.FillRectangle(pincel1, 50, 50, 50 + largo1, 80);
            float largo2 = valor2 / mayor * 400;
            SolidBrush pincel2 = new SolidBrush(Color.Green);
            lienzo.FillRectangle(pincel2, 50, 150, 50 + largo2, 80);
            float largo3 = valor3 / mayor * 400;
            SolidBrush pincel3 = new SolidBrush(Color.Blue);
            lienzo.FillRectangle(pincel3, 50, 250, 50 + largo3, 80);
            //Cantidades
            SolidBrush pincel4 = new SolidBrush(Color.Black);
            Font fuente1 = new Font("Arial", 30);
            lienzo.DrawString(valor1.ToString(), fuente1, pincel4, 60, 80);
            lienzo.DrawString(valor2.ToString(), fuente1, pincel4, 60, 160);
            lienzo.DrawString(valor3.ToString(), fuente1, pincel4, 60, 260);
            mapabit.Save(Response.OutputStream, ImageFormat.Gif);
        }

        private float RetornarMayor(float x1, float x2, float x3)
        {
            if (x1 > x2 && x1 > x3)
                return x1;
            else
                if (x2 > x3)
                return x2;
            else
                return x3;
        }
    }
}
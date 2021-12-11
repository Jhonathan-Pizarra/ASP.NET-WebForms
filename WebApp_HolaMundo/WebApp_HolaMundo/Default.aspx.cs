using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_HolaMundo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Mediante el objeto DateTime y accediendo a la propiedad Today y llamamos al método ToString pasando un string con una "d" lo que hace que dicho método nos retorne el dia, mes y año.
            Label1.Text = DateTime.Today.ToString("d");
        }
    }
}
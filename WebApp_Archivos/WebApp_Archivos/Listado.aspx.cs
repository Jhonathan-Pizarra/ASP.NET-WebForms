﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Improtar para usar ocn archivos
using System.IO;

namespace WebApp_Archivos
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(Server.MapPath(".") + "/visitas.txt");
            lblMessage.Text = arch.ReadToEnd();
            arch.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Autos
{
    public partial class ABMMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearMarcas_Click(object sender, EventArgs e)
        {
            SqlMarcas.InsertParameters["descripcion"].DefaultValue = txtMarca.Text;
            SqlMarcas.Insert();
            txtMarca.Text = "";
        }
    }
}
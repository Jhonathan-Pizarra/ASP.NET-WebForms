using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_CRUDArticulos
{
    public partial class CrearRubros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearRubro_Click(object sender, EventArgs e)
        {
            SqlRubro.InsertParameters["descripcion"].DefaultValue = txtRubro.Text;
            SqlRubro.Insert();
            lblRespRubro.Text = "Se efectuó la carga";
            txtRubro.Text = "";
        }
    }
}
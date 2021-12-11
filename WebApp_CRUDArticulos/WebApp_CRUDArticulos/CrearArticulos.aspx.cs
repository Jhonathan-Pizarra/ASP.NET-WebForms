using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_CRUDArticulos
{
    public partial class CrearArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearArticulo_Click(object sender, EventArgs e)
        {
            SqlCrearArticulo.InsertParameters["descripcion"].DefaultValue = txtDescripcion.Text;
            SqlCrearArticulo.InsertParameters["precio"].DefaultValue = txtPrecio.Text;
            SqlCrearArticulo.InsertParameters["codigorubro"].DefaultValue = cmbRubros.SelectedValue;
            SqlCrearArticulo.Insert();
            lblRespArticulo.Text = "se efectuó la carga";
            txtDescripcion.Text = "";
            txtPrecio.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_CRUDArticulos
{
    public partial class EliminarArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBorrarArticulo_Click(object sender, EventArgs e)
        {
            SqlBorrarArticulo.DeleteParameters["codigo"].DefaultValue = txtCodigoArticulo.Text;
            int cant;
            cant = SqlBorrarArticulo.Delete();
            if (cant == 1)
                lblRespEliminacion.Text = "Se borró el artículo";
            else
                lblRespEliminacion.Text = "No existe el codigo";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//SQL
using System.Data.SqlClient;

namespace WebApp_CRUDArticulos
{
    public partial class ConsultarArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarArticulo_Click(object sender, EventArgs e)
        {
            SqlConsultaArticulo.SelectParameters["codigo"].DefaultValue = txtCodigoArticulo.Text;
            SqlConsultaArticulo.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlConsultaArticulo.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
                lblRespBusqueda.Text = "Descripcion:" +
                    registros["descriarticulo"] + "<br>" +
                    "Precio:" + registros["precio"] + "<br>" +
                    "Rubro:" + registros["descrirubro"];
            else
                lblRespBusqueda.Text = "No existe un artículo con dicho código";
        }
    }
}
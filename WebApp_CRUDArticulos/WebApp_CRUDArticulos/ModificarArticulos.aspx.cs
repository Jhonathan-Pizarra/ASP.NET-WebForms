using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Sql
using System.Data.SqlClient;

namespace WebApp_CRUDArticulos
{
    public partial class ModificarArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarArticulo_Click(object sender, EventArgs e)
        {
            SqlDataArticulos.SelectParameters["codigo"].DefaultValue = txtCodigoArticulo.Text;
            SqlDataArticulos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataArticulos.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                txtDescripcion.Text = registros["descripcion"].ToString();
                txtPrecio.Text = registros["precio"].ToString();
                cmbEscogerRubros.SelectedValue = registros["codigorubro"].ToString();
                cmbEscogerRubros.DataSource = SqlDataRubros;
                cmbEscogerRubros.DataTextField = "descripcion";
                cmbEscogerRubros.DataValueField = "codigo";
                cmbEscogerRubros.DataBind();
            }
            else
                lblRespBusqueda.Text = "No existe un artículo con dicho código";
        }

        protected void btnModificarArticulo_Click(object sender, EventArgs e)
        {
            SqlDataArticulos.UpdateParameters["descripcion"].DefaultValue = txtDescripcion.Text;
            SqlDataArticulos.UpdateParameters["precio"].DefaultValue = txtPrecio.Text;
            SqlDataArticulos.UpdateParameters["codigorubro"].DefaultValue = cmbEscogerRubros.SelectedValue;
            SqlDataArticulos.UpdateParameters["codigo"].DefaultValue = txtCodigoArticulo.Text;
            int cant;
            cant = SqlDataArticulos.Update();
            if (cant == 1)
                lblRespArticulo.Text = "Se modifico el artículo";
            else
                lblRespBusqueda.Text = "No existe el codigo";
        }
    }
}
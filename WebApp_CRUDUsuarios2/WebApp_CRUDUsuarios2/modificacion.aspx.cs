using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Sql
using System.Data.SqlClient;

namespace WebApp_CRUDUsuarios2
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlUpdate.SelectParameters["nombre"].DefaultValue = txtUsername.Text;
            SqlUpdate.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)SqlUpdate.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
            {
                txtPassword.Text = datos["clave"].ToString();
                txtMail.Text = datos["mail"].ToString();
            }
            else
                lblSearch.Text = "No existe un usuario con dicho nombre";
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            SqlUpdate.UpdateParameters["nombre"].DefaultValue = txtUsername.Text;
            SqlUpdate.UpdateParameters["clave"].DefaultValue = txtPassword.Text;
            SqlUpdate.UpdateParameters["mail"].DefaultValue = txtMail.Text;
            //El método Update de la clase SqlDataSource retorna un entero que indica la cantidad de registros modificados de la tabla (si retorna un 1 significa que un registro fue modificado):
            int cant;
            cant = SqlUpdate.Update();
            if (cant == 1)
                lblUdpate.Text = "Se modificaron los datos";
            else
                lblUdpate.Text = "No existe dicho codigo de usuario";
        }
    }
}
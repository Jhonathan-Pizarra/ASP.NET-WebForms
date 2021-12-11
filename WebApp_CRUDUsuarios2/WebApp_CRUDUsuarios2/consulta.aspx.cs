using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Neceisto para leer la BDD
using System.Data.SqlClient;

namespace WebApp_CRUDUsuarios2
{
    public partial class consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlConsulta.SelectParameters["nombre"].DefaultValue = txtUsername.Text;
            SqlConsulta.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            //Cuando llamemos al método select del SqlDataSource lo hacemos con la siguiente sintaxis
            datos = (SqlDataReader)SqlConsulta.Select(DataSourceSelectArguments.Empty);
            //Luego recorremos el SqlDataReader (como este caso puede retornar cero o una fila lo hacemos mediante un if:
            if (datos.Read())
                lblMessage.Text = "Clave:" + datos["clave"] + "<br>Mail:" + datos["mail"];
            else
                lblMessage.Text = "No existe un usuario con dicho nombre";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//SQL
using System.Data.SqlClient;
//Archivos
using System.IO;

namespace WebApp_Autos
{
    public partial class BorrarAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            SqlAuto.DeleteParameters["patente"].DefaultValue = txtPatente.Text;
            int cant;
            cant = SqlAuto.Delete();
            if (cant == 0)
                this.lblMensaje.Text = "No existe un auto con el valor de patente ingresado";
            else
            {
                this.lblMensaje.Text = "Se borro el auto con dicha patente";
                SqlAuto.SelectParameters["patente"].DefaultValue = txtPatente.Text;
                SqlAuto.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader registro;
                registro = (SqlDataReader)SqlAuto.Select(DataSourceSelectArguments.Empty);
                if (registro.Read())
                    File.Delete(Server.MapPath(".") + "/imagenes/" + registro["foto"]);
            }
        }
    }
}
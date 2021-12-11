using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Usar la vdd
using System.Data.SqlClient;


namespace WebApp_Autos
{
    public partial class ConsultarPatente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTraer_Click(object sender, EventArgs e)
        {
            SqlPatente.SelectParameters["patente"].DefaultValue = txtPatente.Text;
            SqlPatente.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro = (SqlDataReader)SqlPatente.Select(DataSourceSelectArguments.Empty);
            if (registro.Read())
            {
                Image1.ImageUrl = "/imagenes/"+registro["foto"].ToString();
                lblResponse.Text = "Propiegario" + registro["propietario"] + "<br>" +
                              "Precio:" + registro["precio"] + "<br>" +
                              "Modelo:" + registro["modelo"] + "<br>" +
                              "Marca:" + registro["descripcion"];
            }
            else
            {
                lblResponse.Text = "No existe un auto con dicha patente";
            }
        }
    }
}
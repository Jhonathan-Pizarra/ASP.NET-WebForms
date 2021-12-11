using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//SQL
using System.Data.SqlClient;

namespace WebApp_Autos
{
    public partial class ConsultarRango : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            SqlAutos.SelectParameters["modelo1"].DefaultValue = txtInicial.Text;
            SqlAutos.SelectParameters["modelo2"].DefaultValue = txtFinal.Text;
            SqlAutos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros = (SqlDataReader)SqlAutos.Select(DataSourceSelectArguments.Empty);
            lblResponse.Text = "";
            while (registros.Read() == true)
            {
                lblResponse.Text = lblResponse.Text + "<img src=\"" + "/imagenes/"+ registros["foto"] + "\"><br><br>";
            }
        }
    }
}
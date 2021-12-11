using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Sql
using System.Data.SqlClient;

namespace WebApp_Autos
{
    public partial class FotosPorMarca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostar_Click(object sender, EventArgs e)
        {
            SqlAutos.SelectParameters["codigomarca"].DefaultValue = DropDownList1.SelectedValue;
            SqlAutos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros = (SqlDataReader)SqlAutos.Select(DataSourceSelectArguments.Empty);
            this.lblRespuesta.Text = "";
            while (registros.Read() == true)
            {
                lblRespuesta.Text = lblRespuesta.Text + "<img src=\"" +"/imagenes/"+registros["foto"] + "\"><br>";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Database
using System.Data.SqlClient;

namespace WebApp_CRUDUsuarios
{
    public partial class consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["micadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select nombre,clave,mail from usuarios " +
                  " where nombre='" + this.txtUser.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
                this.lblResponse.Text = "Clave:" + registro["clave"] + "<br>" +
                                   "Mail:" + registro["mail"];
            else
                this.lblResponse.Text = "No existe un usuario con dicho nombre";
            conexion.Close();
        }
    }
}
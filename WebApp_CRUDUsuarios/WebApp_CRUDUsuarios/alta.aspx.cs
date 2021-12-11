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
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["micadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into usuarios(nombre,clave,mail) values('" +
                  txtName.Text + "','" + this.txtPassword.Text + "','" +
                  txtMail.Text + "')", conexion);
            comando.ExecuteNonQuery();
            lblResponse.Text = "Se registro el usuario";
            conexion.Close();
        }
    }
}
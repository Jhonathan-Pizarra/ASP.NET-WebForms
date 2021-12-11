using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_CRUDUsuarios2
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            SqlConection.InsertParameters["nombre"].DefaultValue = txtName.Text;
            SqlConection.InsertParameters["clave"].DefaultValue = txtPassword.Text;
            SqlConection.InsertParameters["mail"].DefaultValue = txtEmail.Text;
            SqlConection.Insert();
            lblMessage.Text = "Se efectuó la carga";
            txtName.Text = "";
            txtPassword.Text = "";
            txtEmail.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Autos
{
    public partial class AltaAutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" + FileUpload1.FileName);
            SqlAutos.InsertParameters["patente"].DefaultValue = txtPatente.Text;
            SqlAutos.InsertParameters["propietario"].DefaultValue = txtPropietario.Text;
            SqlAutos.InsertParameters["precio"].DefaultValue = txtPrecio.Text;
            SqlAutos.InsertParameters["modelo"].DefaultValue = txtModelo.Text;
            SqlAutos.InsertParameters["codigomarca"].DefaultValue = cmbMarca.SelectedValue;
            SqlAutos.InsertParameters["foto"].DefaultValue = FileUpload1.FileName;
            SqlAutos.Insert();
            lblResponse.Text = "Los datos fueron cargados";
            txtPatente.Text = "";
            txtPropietario.Text = "";
            txtPrecio.Text = "";
            txtModelo.Text = "";
        }
    }
}
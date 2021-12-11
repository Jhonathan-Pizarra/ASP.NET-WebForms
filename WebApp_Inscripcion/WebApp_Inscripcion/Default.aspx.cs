using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Para validar email
using System.Text.RegularExpressions;

namespace WebApp_Inscripcion
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String username = txtUsername.Text;
            String password = txtPassword.Text;
            String confirmPassword = txtConfirm.Text;
            String email = txtEmail.Text;
            String lastName = txtLastName.Text;
            String name = txtName.Text;
            //String county = cbxCountry.SelectedValue;
            String province = txtProvince.Text;
            String codPostal = txtCode.Text;
            int n;
            bool isNumeric = int.TryParse(codPostal, out n);
            //String sexMan = rdoMan.Text;
            //String sexWomen = rdoWoman.Text;
            //String bithday = txtBirthday.Text;
            Boolean terms = cbxAccept.Checked;

            
            if (username == "")
            {
                lblError1.Text = "El campo está vacío";
            }

            if (password.Length < 5)
            {
                if (password == "")
                {
                    lblError2.Text = "El campo está vacío";
                }
                else
                {
                    lblError2.Text = "La contraseña minima de 6 caracteres";
                }
            }

            
            if (confirmPassword == "")
            {
                lblError3.Text = "El campo está vacío";
            }
            else 
            if (confirmPassword != password)
            {
                lblError3.Text = "Las contraseñas no coinciden";
            }


            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
            {
                //Response.Write(email + " is correct");
                lblError4.Text = "Mail Válido";
            }
            else
            {
                //Response.Write(email + " is incorrect");
                lblError4.Text = "Email no válido";
            }


            if (lastName == "")
            {
                lblError5.Text = "El campo está vacío";
            }
            else
            if(name == "")
            {
                lblError6.Text = "El campo está vacío";
            }


            //Selector
            if (cbxCountry.Items[0].Selected)
            {
                lblError7.Text = "Ecuador";
            }
            else
            if (cbxCountry.Items[1].Selected)
            {
                lblError7.Text = "Argentina";
            }
            else
            if (cbxCountry.Items[2].Selected)
            {
                lblError7.Text = "Mexico";
            }
            else
            if (cbxCountry.Items[3].Selected)
            {
                lblError7.Text = "Colombia";
            }
            else
            if (cbxCountry.Items[4].Selected)
            {
                lblError7.Text = "Costa Rica";
            }
            else
            {
                lblError7.Text = "El campo seleccionado no es válido";
            }

            if (province == "")
            {
                lblError8.Text = "El campo está vacío";
            }
            
            if (codPostal == "")
            {
                lblError9.Text = "El campo está vacío";
            }
            else 
            if (!isNumeric)
            {
                lblError9.Text = "No es un número";    
            }

           //RadioButton
           if (rdoMan.Checked)
           {
                lblError10.Text = "Hombre";
           }
           else
           if (rdoWoman.Checked)
           {
               lblMessage.Text = "Mujer";
           }
            else
            {
                lblError10.Text = "No se ha seleccionado";
            }

            //Checkbox
            if (terms)
            {
                this.lblError12.Text = "";
            }
            else 
            {
                this.lblError12.Text = "No has aceptado los términos";
            }

        
        }
    }
}
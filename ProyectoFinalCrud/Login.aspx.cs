using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalCrud
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void boton_Ingresar_Click(object sender, EventArgs e)
        {
            if (txt_Usuario.Text == "" || txt_Contraseña.Text == "")
            {
                Mensaje("Llene todos los campos");
            }
            else 
            {
                string user = txt_Usuario.Text;
                string pass = txt_Contraseña.Text;

                string access = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\deivi\\Documents\\Colegio.accdb";
                
                using (OleDbConnection conexion = new OleDbConnection(access))
                {
                    conexion.Open();
                    string ingresar = "select Nombre_usuario, Contraseña from usuarios WHERE Nombre_usuario = @usuario and Contraseña = @contraseña";
                    OleDbCommand command = new OleDbCommand(ingresar, conexion);
                    command.Parameters.AddWithValue("@usuario", user);
                    command.Parameters.AddWithValue("@contraseña", pass);
                    OleDbDataReader lectura = command.ExecuteReader();

                    if (lectura.Read())
                    {
                        this.Visible = false;
                        Session["Nombre_usuario"] = lectura.GetString(1);
                        Session["Contraseña"] = lectura.GetString(1);
                        Mensaje("Ingreso correctamente");
                        Response.Redirect("RegistroEstudiantes.aspx");
                    }
                    else
                    {
                        Mensaje("Campos incorrectos");
                        this.Visible = true;
                    }
                }
                
            }
            
        }

        private void Mensaje(String Texto)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Texto + "');", true);
        }
    }
}
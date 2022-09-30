using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ProyectoFinalCrud
{
    public partial class RegistroEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            if (txt_Cedula.Text == "" || txt_Curso.Text == "" || txt_Direccion.Text == "" || txt_Email.Text == "" || txt_Fecha.Text == "" || txt_NombreApellido.Text == "" || txt_Representante.Text == "" || txt_Telf.Text == "")
            {
                Mensaje("Llene todos los campos");
            }else
            {
                try
                {
                    OleDbConnection conexion = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\deivi\\Documents\\Colegio.accdb");
                    conexion.Open();
                    string insertar = "INSERT INTO estudiantes (Nombre, Cedula, Fecha_nacimiento, Curso, Telefono, Email, Direccion, Representante) VALUES ('" + this.txt_NombreApellido.Text + "', '" + this.txt_Cedula.Text + "', '" + this.txt_Fecha.Text + "', '" + this.txt_Curso.Text + "', '" + txt_Telf.Text + "', '" + txt_Email.Text + "', '" + txt_Direccion.Text + "', '" + txt_Representante.Text + "')";
                    OleDbCommand command = new OleDbCommand(insertar, conexion);
                    command.ExecuteNonQuery();
                    Mensaje("Registro guardado correctamente");
                    Limpiar();
                    conexion.Close();
                }
                catch (OleDbException ex)
                {
                    Mensaje("ESTE ALUMNO YA SE ENCUANTRA REGISTRADO, REGISTRE OTRO ALUMNO");
                    Limpiar();
                }
            }            
        }
        private void Mensaje(String Texto)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Texto + "');", true);
        }
        private void Limpiar()
        {
            txt_Cedula.Text = "";
            txt_Curso.Text = "";
            txt_Direccion.Text = "";
            txt_Email.Text = "";
            txt_Fecha.Text = "";
            txt_NombreApellido.Text = "";
            txt_Representante.Text = "";
            txt_Telf.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Examen3_SebastianCastro
{
    public partial class Encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                string nombre = Request.Form["nombre"];
                string correo = Request.Form["correo"];
                string partido = Request.Form["partido"];
                DateTime fechaNacimiento = Convert.ToDateTime(Request.Form["fechaNacimiento"]);

                int edad = CalcularEdad(fechaNacimiento);

                if (edad >= 18 && edad <= 50)
                {
                    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Connect"].ConnectionString))
                    {
                        connection.Open();
                        using (SqlCommand cmd = new SqlCommand("AgregarEncuesta", connection))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Nombre", nombre);
                            cmd.Parameters.AddWithValue("@Edad", edad);
                            cmd.Parameters.AddWithValue("@CorreoElectronico", correo);
                            cmd.Parameters.AddWithValue("@PartidoPolitico", partido);
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "La edad no está en el rango deseado. La encuesta no fue agregada.";
                }
            }
        }

        private int CalcularEdad(DateTime fechaNacimiento)
        {
            DateTime fechaActual = DateTime.Now;
            int edad = fechaActual.Year - fechaNacimiento.Year;

            if (fechaNacimiento.Date > fechaActual.AddYears(-edad))
            {
                edad--;
            }

            return edad;
        }

    }
}
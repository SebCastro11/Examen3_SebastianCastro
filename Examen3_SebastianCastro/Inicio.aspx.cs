using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3_SebastianCastro
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            MostrarReporte();
        }

        private void MostrarReporte()
        {
            DataTable dtEncuestas = ObtenerDatosEncuestas();

            GridViewEncuestas.DataSource = dtEncuestas;
            GridViewEncuestas.DataBind();
        }

        private DataTable ObtenerDatosEncuestas()
        {
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Connect"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand("ObtenerEncuestas", connection)) 
                {
                    cmd.CommandType = CommandType.StoredProcedure; 

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }

            return dt;
        }
    }
}
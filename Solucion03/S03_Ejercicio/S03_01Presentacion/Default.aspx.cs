using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Windows.Forms;
using S02_04Entidades;
using S02_02LogicaNegocio;
using System.Globalization;

namespace S03_01Presentacion
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CargarPersonal();
        }

        #region CargarPersonal
        private void CargarPersonal()
        {
            try
            {
                List<RegistroPersonal> lstPersonas = Logica.ObtenerPersonal();

                if (gvRegistros.Rows.Count > 0)
                {
                    gvRegistros.DataSource = null; //Limpia el gridview
                    //gvRegistros.Refresh();
                }
                this.gvRegistros.DataSource = lstPersonas;
                //this.gvRegistros.Refresh();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
        }
        #endregion

        
        #region Load del form
        private void Form1_Load(object sender, EventArgs e)
        {
            this.CargarPersonal();
        }
        #endregion

        #region Limpiar
        private void Limpiar()
        {
            Nombre_Empleado.Text = "";
            identificacion.Text = "";
            posicion.Text = "";
            area.Text = "";
        }
        #endregion

        protected void Entrada_Click(object sender, EventArgs e)
        {
            try
            {
                RegistroPersonal personal = new RegistroPersonal();

                string hora, fecha;
                hora = DateTime.Now.ToString("hh:mm");
                fecha = DateTime.Now.ToString("dd/MM/yyyy");
                personal.nombreEmpleado = Nombre_Empleado.Text.Trim();
                personal.identificacion = Convert.ToInt32(identificacion.Text.Trim());
                personal.posicion = posicion.Text.Trim();
                personal.area = area.Text.Trim();
                personal.fechaEntrada = fecha;
                personal.horaEntrada = hora;
                personal.fechaSalida = "";
                personal.horaSalida = "";
                S02_02LogicaNegocio.Logica.ModificarHoraEntrada(personal);
                CargarPersonal(); //Limpiar();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Entrada registrada con exito');</script>");

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al generar Entrada');</script>");
            }
        }

        protected void Salida_Click(object sender, EventArgs e)
        {
            try
            {
                RegistroPersonal personal = new RegistroPersonal();
                string hora, fecha;
                hora = DateTime.Now.ToString("hh:mm");
                fecha = DateTime.Now.ToString("dd/MM/yyyy");
                personal.nombreEmpleado = Nombre_Empleado.Text.Trim();
                personal.identificacion = Convert.ToInt32(identificacion.Text.Trim());
                personal.posicion = posicion.Text.Trim();
                personal.area = area.Text.Trim();
                personal.fechaEntrada = "";
                personal.horaEntrada = "";
                personal.fechaSalida = fecha;
                personal.horaSalida = hora;

                S02_02LogicaNegocio.Logica.ModificarHoraSalida(personal);
                CargarPersonal(); //Limpiar();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Salida Registrada con exito');</script>");

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar Salida');</script>");
            }
        }
    }
}
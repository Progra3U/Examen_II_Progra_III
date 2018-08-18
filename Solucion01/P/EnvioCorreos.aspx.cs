using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;  //Librerias para envio de correo electronico
using System.Net.Mail;
using System.Threading; //Hilos de ejecucion

namespace P
{
    public partial class FrmEnvioCorreos : System.Web.UI.Page
    {
        DataTable dt = new DataTable();  

        private void EnviarCorreoElectronicos()
        {
            SmtpClient envio = new SmtpClient(); 
            MailMessage msj = new MailMessage(); 
         
            if (ViewState["ListaCorreos"] != null) 
                dt = (DataTable)ViewState["ListaCorreos"];
            try
            {
                foreach (DataRow fila in dt.Rows)
                {
                    msj = new MailMessage();
                    msj.To.Add(new MailAddress(fila.ItemArray[0].ToString()));
                    msj.From = new MailAddress("interbankcomgurpofinanciero@gmail.com");
                    msj.Subject = "Test de Correo para Progr III, Examen II";
                    msj.Body = "Proyecto realizado por: Carlos Perez Medina, Marcela Salas Montoya y Maynor Rodriguez Molina";
                    msj.IsBodyHtml = true;
                    msj.Priority = MailPriority.Normal;

                    //Configuracion SMTP
                    envio.Host = "smtp.gmail.com";
                    envio.Port = 587;
                    envio.EnableSsl = true;
                    envio.UseDefaultCredentials = false;
                    envio.Credentials = new NetworkCredential("interbankcomgurpofinanciero@gmail.com",
                                                                "egs76$gs");
                    //envio
                    envio.Send(msj);

                    msj.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {  
                ViewState["ListaCorreos"] = null;
            }  
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                dt.Columns.Add("correo");
                if (ViewState["ListaCorreos"] != null)
                    dt = (DataTable)ViewState["ListaCorreos"];

                dt.Rows.Add(this.txtCorreo.Text.Trim());
                ViewState["ListaCorreos"] = dt;
                this.gvCorreos.DataSource = dt;
                this.gvCorreos.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Thread hilo = new Thread(EnviarCorreoElectronicos);
            hilo.Start();
            lblaviso.Visible = true;
        }
    }
}
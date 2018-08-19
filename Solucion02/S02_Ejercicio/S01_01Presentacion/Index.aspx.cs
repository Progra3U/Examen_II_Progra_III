using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S01_01Entidades;
using S01_02LogicaNegocio;

namespace S01_01Presentacion
{
    
    public partial class Index : System.Web.UI.Page
    {
        private static int intentos = 3;
        public void inx()
        {intentos = intentos - 1;}
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Usuarios usuarios = new Usuarios();
                usuarios.nombreUsuario = this.Usuario.Text.Trim();
                usuarios.pass = this.pass.Text.Trim();
                usuarios.activo = true;
                if (LN.VerificarUsuarios(usuarios))
                {
                    Session["usuario"] = this.Usuario.Text.Trim();
                    Response.Redirect(@"~\Bienvenida.aspx");
                    intentos = 3;
                }
                else
                {
                    if (intentos == 0)
                    {
                        error.Text = "Usuario Bloqueado";
                        usuarios.activo = false;
                        S01_02LogicaNegocio.LN.ModificarUsuarios(usuarios);
                    }
                    else
                    {
                        inx();
                        error.Text = "Error en Contrasena o Usuario";
                    }
                }
            }
            catch (Exception ex)
            {
                error.Text = "Error "+ ex;
            }
        }
    }
}
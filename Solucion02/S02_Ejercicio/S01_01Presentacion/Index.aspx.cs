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
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                Usuarios usuarios = new Usuarios();
                usuarios.nombreUsuario = this.Usuario.Text.Trim();
                usuarios.pass = this.pass.Text.Trim();
                usuarios.activo = true;
                if (LN.VerificarUsuarios(usuarios))
                {
                    // MessageBox.Show("Usuario si existe");
                    Bienvenida bn = new Bienvenida();
                    bn.ShowDialog();
                    intentos = 3;
                }
                else
                {
                    MessageBox.Show("Usuario no existe");
                    intentos--;
                    if (intentos == 0)
                    {
                        MessageBox.Show("Usuario Bloqueado");
                        usuarios.activo = false;
                        S01_02LogicaNegocio.LN.ModificarUsuarios(usuarios);
                    }

                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

    }
    }
}
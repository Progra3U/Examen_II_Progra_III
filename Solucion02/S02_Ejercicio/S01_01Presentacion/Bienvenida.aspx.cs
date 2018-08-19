using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S01_01Entidades;

namespace S01_01Presentacion
{
    public partial class Bienvenida : System.Web.UI.Page
    {
        Usuarios user = new Usuarios();
        public void recibirUsuario()
        {
            //Usuarios user = new Usuarios();
            usuarioconectado.Text = "Bienvenido "+Session["usuario"].ToString()+". Cargando el contenido de su sesion....";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            recibirUsuario();
        }
    }
}
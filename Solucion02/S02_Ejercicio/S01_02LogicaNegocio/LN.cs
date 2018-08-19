using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using S01_03AccedoDatos;
using S01_01Entidades;
using System.Collections;
using System.Data.SqlClient;
using System.Text.RegularExpressions;


namespace S01_02LogicaNegocio
{
    public class LN
    {
        #region USUARIOS
        public static int ModificarUsuarios(Usuarios usuarios)
        {
            try
            {
                ArrayList lstparametros = new ArrayList(); 
                SQLSentencia sentencia = new SQLSentencia();

                sentencia.PETICION = @"UPDATE Usuarios SET activo = @activo WHERE nombreUsuario = @nombreUsuario";

                SqlParameter nomusuarioparametro = new SqlParameter();
                nomusuarioparametro.SqlDbType = System.Data.SqlDbType.NVarChar;
                nomusuarioparametro.ParameterName = "@nombreUsuario";
                nomusuarioparametro.Value = usuarios.nombreUsuario;

                SqlParameter activoparametro = new SqlParameter();
                activoparametro.SqlDbType = System.Data.SqlDbType.Bit;
                activoparametro.ParameterName = "@activo";
                activoparametro.Value = usuarios.activo;

                lstparametros.Add(nomusuarioparametro);
                lstparametros.Add(activoparametro);

                sentencia.LSTPARAMETROS = lstparametros;

                Acceso objacceso = new Acceso();
                return objacceso.Ejecutar_TSQL(sentencia);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static bool VerificarUsuarios(Usuarios usuarios)
        {
            try
            {
                SQLSentencia sentencia = new SQLSentencia();
                sentencia.PETICION = @"select nombreUsuario, pass, activo from Usuarios where activo = '" + usuarios.activo + "' and nombreUsuario = '" + usuarios.nombreUsuario + "' and pass = '" + usuarios.pass + "'";

                S01_03AccedoDatos.Acceso objacceso = new S01_03AccedoDatos.Acceso();
                List<Usuarios> lstresultados = objacceso.ObtenerUsuarios(sentencia);
                if (lstresultados.Count > 0)
                    return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return false;

        }
    }
    #endregion

}



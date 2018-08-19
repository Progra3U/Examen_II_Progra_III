using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(S03_01Presentacion.Startup))]
namespace S03_01Presentacion
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

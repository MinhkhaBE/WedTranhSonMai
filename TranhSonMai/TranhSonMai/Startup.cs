using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TranhSonMai.Startup))]
namespace TranhSonMai
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineBookShop.Startup))]
namespace OnlineBookShop
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

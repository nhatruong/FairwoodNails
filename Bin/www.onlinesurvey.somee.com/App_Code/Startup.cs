using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FairwoodNails.Startup))]
namespace FairwoodNails
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

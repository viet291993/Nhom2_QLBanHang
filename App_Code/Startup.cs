using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Nhom2_QLBanHang.Startup))]
namespace Nhom2_QLBanHang
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

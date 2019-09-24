using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace OnlineBookShop
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            //default Route
            routes.MapPageRoute(
                routeName: "Default",
                routeUrl: "",
                physicalFile: "~/Default.aspx"
                );
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace NewsWeb
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "News Category",
                url: "danh-muc/{metatitle}-{cateID}",
                defaults: new { controller = "News", action = "Category", id = UrlParameter.Optional },
                namespaces: new[] { "NewsWeb.Controllers" }
            );
            routes.MapRoute(
                name: "News Detail",
                url: "chi-tiet/{alias}-{id}",
                defaults: new { controller = "News", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "NewsWeb.Controllers" }
            );
            routes.MapRoute(
                name: "About",
                url: "gioi-thieu",
                defaults: new { controller = "About", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "NewsWeb.Controllers" }
            );
            routes.MapRoute(
                name: "FeedBack",
                url: "lien-he",
                defaults: new { controller = "FeedBack", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "NewsWeb.Controllers" }
            );

            


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] {"NewsWeb.Controllers"}
            );
        }
    }
}

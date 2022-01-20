using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NewsWeb.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index(int page = 1, int PageSize = 2)
        {
            var newsDao = new NewsDao();
            IEnumerable<Model.EF.News> enumerable = newsDao.ListNews(page,PageSize);
            
            return View(enumerable);
        }

        [ChildActionOnly] 
        public ActionResult MainMenu()
        {
            var model = new MenuDao().ListMenu();
            return PartialView(model);
        }


        [ChildActionOnly] 
        public ActionResult Footer()
        {
            var model = new FooterDao().GetFooter();
            return PartialView(model);
        }

        [ChildActionOnly]
        public ActionResult DanhMuc()
        {
            var model = new NewsCategoryDao().ListAll();
            return PartialView(model);
        }

    }
}
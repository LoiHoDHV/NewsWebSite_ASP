using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.Dao;
namespace NewsWeb.Controllers
{
    public class NewsController : Controller
    {
        // GET: News
        public ActionResult Index()
        {
            return View();
        }
        

        public ActionResult Category(long cateID,int page = 1, int pageSize = 2)
        {
            var ListNewsByCategory = new NewsDao().ListByCategory(page,pageSize,cateID);
            ViewBag.CateName = new NewsCategoryDao().GetCateName(cateID);
            return View(ListNewsByCategory);
        }

        public ActionResult Detail(int id)
        {
            var news = new NewsDao().ViewDetail(id);
            return View(news);
        }
    }
}
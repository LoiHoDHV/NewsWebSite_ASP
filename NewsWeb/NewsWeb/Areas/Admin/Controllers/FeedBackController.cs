using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.Dao;
using Model.EF;

namespace NewsWeb.Areas.Admin.Controllers
{
    public class FeedBackController : BaseController
    {
        // GET: Admin/FeedBack
        public ActionResult Index(String searchString , int page = 1, int pageSize =10)
        {
            var dao = new FeedbackDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);   
            return View(model);
        }
        
        [HttpGet]
        public ActionResult ViewDetail(int id)
        {
            var dao = new FeedbackDao().ViewDetail(id);
            return View(dao);
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            new FeedbackDao().Delete(id);
            return RedirectToAction("Index");
        }


    }
}
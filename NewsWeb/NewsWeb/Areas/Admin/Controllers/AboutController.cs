using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.Dao;
using Model.EF;

namespace NewsWeb.Areas.Admin.Controllers
{
    public class AboutController : BaseController
    {
        // GET: Admin/About
        public ActionResult Index(String searchString , int page = 1, int pageSize = 10)
        {
            var dao = new AboutDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);   
            
            ViewBag.SearchString = searchString;
            return View(model);
            
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(About model)
        {
            if (ModelState.IsValid)
            {
                var session = (UserLogin)Session[Common.CommonConstants.USER_SESSION];

                new AboutDao().Create(model);
                return RedirectToAction("Index");
            }
            return View("Index");
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var dao = new AboutDao().ViewDetail(id);
            return View(dao);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(About model)
        {
            var dao = new AboutDao();
            
            var result = dao.Update(model);

            if (result)
            {
                return RedirectToAction("Index", "About");
            }
            else
            {
                ModelState.AddModelError("", "Cập nhật không thành công");
            }
            return View("Index");
        }

        public ActionResult Delete(int id)
        {
            new AboutDao().Delete(id);
            return RedirectToAction("Index");
        }

        public ActionResult ViewDetail(int id)
        {
            var dao = new AboutDao().ViewDetail(id);
            return View(dao);
        }

       
    }
}
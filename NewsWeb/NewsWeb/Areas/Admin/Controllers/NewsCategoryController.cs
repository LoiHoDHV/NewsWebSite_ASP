using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.Dao;
using Model.EF;

namespace NewsWeb.Areas.Admin.Controllers
{
    public class NewsCategoryController : BaseController
    {
        // GET: Admin/NewsCategory
        public ActionResult Index(String searchString, int page = 1, int pageSize = 10)
        {
            var dao = new NewsCategoryDao();
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
        public ActionResult Create(NewsCategory model)
        {
            if (ModelState.IsValid)
            {
                var session = (UserLogin)Session[Common.CommonConstants.USER_SESSION];
                new NewsCategoryDao().Create(model);
                return RedirectToAction("Index");
            }
            return View("Index");
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var dao = new NewsCategoryDao().ViewDetail(id);
            return View(dao);
        }
        [HttpPost]
        public ActionResult Edit(NewsCategory model)
        {
            if (ModelState.IsValid)
            {
                var dao = new NewsCategoryDao();
                
                var result = dao.Update(model);
                if(result )
                {
                    return RedirectToAction("Index", "NewsCategory");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật danh mục không thành công");
                }
            }
            return View("Index");
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            new NewsCategoryDao().Delete(id);
            return RedirectToAction("Index");
        }
        
    }
}
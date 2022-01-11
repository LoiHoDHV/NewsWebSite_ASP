using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.Dao;
using Model.EF;
using NewsWeb.Common;
namespace NewsWeb.Areas.Admin.Controllers
{
    public class NewsController : BaseController
    {
        // GET: Admin/News
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new NewsDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);

            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(News model)
        {
            if (ModelState.IsValid)
            {
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                new NewsDao().Create(model);
                return RedirectToAction("Index");
                
            }
            SetViewBag();
            return View("Index");
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var dao = new NewsDao().ViewDetail(id);
            
            
            return View(dao);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(News model)
        {
            if (ModelState.IsValid)
            {
                var dao = new NewsDao();

                var result = dao.Update(model);

                if (result)
                {
                    return RedirectToAction("Index", "News");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật tin tức thành công");
                }
            }
            SetViewBag(model.CategoryID);
            return View("Index");
        }

        


        public void SetViewBag(long? selectedId = null)
        {
            var dao = new NewsCategoryDao();

            ViewBag.CategoryID = new SelectList(dao.ListAll(),"ID","Name", selectedId);
            

        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            new NewsDao().Delete(id);
            return RedirectToAction("Index");
        }


    }
}
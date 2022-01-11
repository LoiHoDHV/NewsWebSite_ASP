using Model.Dao;
using NewsWeb.Common;
using NewsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NewsWeb.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(LoginModel model)
        {
            //kiểm tra form rỗng
            if (ModelState.IsValid)
            {
                var dao = new UserDao();

                // Mã hóa MD5 cho modelPassword rồi so sánh
                var result = dao.Login(model.UserName, Encryptor.MD5Hash(model.PassWord));
                if (result == 1)
                {
                    var user = dao.GetById(model.UserName);
                    var userSession = new UserLogin();
                    userSession.UserName = user.Username;
                    userSession.UserID = user.ID;
                    Session.Add(Common.CommonConstants.USER_SESSION, userSession);
                    return RedirectToAction("Index", "Home");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Không tồn tại tài khoản này");

                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản bị khóa");

                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng");

                }
                else

                {
                    ModelState.AddModelError("", "Đăng nhập không đúng");
                }
            }
            return View("Index");

        }
    }
}
using Group01_PRJ.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.IO;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Group01_PRJ.Controllers
{
    public class AuthController : Controller
    {
        private readonly AttendedContext _context;

        public AuthController(AttendedContext context)
        {
            this._context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login(User user)
        {
            if (ModelState.IsValid)
            {
               
                if (_context.Users.FirstOrDefault(item => (item.Username == user.Username && item.Password == user.Password)) != null)
                {
                    HttpContext.Session.SetString("user", user.Username);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.Error = "Dont have that user!";
                }
            }
            return View(user);
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Remove("user");
            return RedirectToAction("Login", "Auth");
        }
    }
}

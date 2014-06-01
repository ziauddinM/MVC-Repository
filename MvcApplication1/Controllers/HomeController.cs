using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class HomeController : Controller
    {
        private AccountContext db = new AccountContext();
        //
        // GET: /HomePage/

        #region homepage
        public ActionResult Index()
        {
            Account[] account = db.Accounts.ToArray();
            return View("ViewAll", account);
        }
        #endregion

        public ActionResult IndexPage()
        {
            return View("ViewIndexPage");
        }

        #region register
        [HttpPost]
        public ActionResult Register(Account newacc)
        {

            string name = newacc.Name;
            string phone = newacc.phonenum;
            string email = newacc.email;
            string passwd = newacc.passwd;
            string chkpasswd = newacc.checkpasswd;

            if (passwd != name)
            {
                if (chkpasswd == passwd)
                {
                    if (!(ModelState.IsValid))
                    {
                        return View("ViewIndexPage");
                    }
                    else
                    {
                        db.Accounts.Add(newacc);
                        db.SaveChanges();
                        int id = newacc.id;
                        Account acnt = db.Accounts.Find(id);
                        return View("Register", acnt);
                    }
                }
                else
                {

                    ModelState.AddModelError("checkpasswd", "password and confirm password must be same");
                    return View("ViewIndexPage");
                }
            }
            else
            {
                ModelState.AddModelError("passwd", "username and password cannot be same");
                return View("ViewIndexPage");
            }
        }
        #endregion

        # region Edit
        public ActionResult Edit(int id)
        {
            var acc = db.Accounts.SingleOrDefault(ac => ac.id == id);
            return View(acc);
        }

        [HttpPost]
        public ActionResult Edit(Account account)
        {
            if (ModelState.IsValid)
            {
                db.Entry(account).State = EntityState.Modified;
                db.SaveChanges();
                return View("Register", account);
            }
            return View(account);
        }
        #endregion

        #region delete
        public ActionResult Delete(int id)
        {
            var acc = db.Accounts.SingleOrDefault(ac => ac.id == id);
            return View(acc);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult Deleteconfirm(int id)
        {
            Account account = db.Accounts.SingleOrDefault(acc => acc.id == id);
            if (account == null)
            {
                return HttpNotFound();
            }
            db.Accounts.Remove(account);
            db.SaveChanges();
            return RedirectToAction("Index");

        }
        #endregion

        #region viewall

        public ActionResult ViewAll()
        {
            return RedirectToAction("Index");
        }
        #endregion
    }
}

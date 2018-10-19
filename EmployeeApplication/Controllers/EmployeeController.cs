using Models;
using Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EmployeeApplication.Controllers
{
    public class EmployeeController : Controller
    {
        EmployeeService empservice = new EmployeeService();
        // GET: Employee
        public ActionResult Index()
        {
            var model = empservice.GetAll();

            return View(model);
        }

        // GET: Employee/Details/5
        public PartialViewResult Details(int id)
        {

            var model = empservice.GetbyId(id);
            return PartialView(model);
        }

        // GET: Employee/Create
        public PartialViewResult Create()
        {
            return PartialView();
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult Create(Employee model)
        {
            try
            {
                empservice.Insert(model);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Edit/5
        public PartialViewResult Edit(int id)
        {
            var model = empservice.GetbyId(id);
            return PartialView(model);
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Delete/5
        public ActionResult Delete(int id)
        {
            try
            {
                empservice.Delete(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // POST: Employee/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

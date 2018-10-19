using Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class EmployeeRepository : IGenericRepository<Employee>
    {
        EmployeeEntities db = new EmployeeEntities();
        public void Add(Employee entity)
        {
            entity.Valid = true;
            db.Employees.Add(entity);
            Save();
        }

        public void Delete(Employee entity)
        {
            entity.Valid = false;
            db.Entry<Employee>(entity).State = EntityState.Modified;
            Save();
        }

        public void Edit(Employee entity)
        {
            db.Entry<Employee>(entity).State = EntityState.Modified;
            Save();
        }

        public IQueryable<Employee> FindBy(Expression<Func<Employee, bool>> predicate)
        {
           return db.Employees.Where(predicate);
        }

        public IQueryable<Employee> GetAll()
        {
            return db.Employees.Where(x=>x.Valid==true);
        }
        public Employee GetById(int Id)
        {
            return db.Employees.Where(x=>x.Emp_Id==Id && x.Valid==true).FirstOrDefault();
        }
        public void Save()
        {
            db.SaveChanges();
        }
    }
}

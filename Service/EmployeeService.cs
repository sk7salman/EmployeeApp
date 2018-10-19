using Models;
using Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service
{
    
   public class EmployeeService
    {
        EmployeeRepository empRepo = new EmployeeRepository();
        public Employee GetbyId(int id)
        {
            Employee emp = new Employee();
            emp = empRepo.GetById(id);
            return emp;
        }
        public List<Employee> GetAll()
        {
            List<Employee> emp = new List<Employee>();
            emp = empRepo.GetAll().ToList();
            return emp;
        }
        public void Insert(Employee emp)
        {
            empRepo.Add(emp);
        }
        public void Update(Employee emp)
        {
            empRepo.Edit(emp);
        }
        public void Delete(int  id)
        {
            empRepo.Delete(GetbyId(id));
        }
    }
}

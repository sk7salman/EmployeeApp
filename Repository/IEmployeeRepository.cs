using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
   public interface IEmployeeRepository: IGenericRepository<Employee>
    {
        Employee GetSingle(int empid);
    }
}

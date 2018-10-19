namespace Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EmployeeEntities : DbContext
    {
        public EmployeeEntities()
            : base("name=EmployeeEntities")
        {
        }

        public virtual DbSet<Employee> Employees { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>()
                .Property(e => e.Emp_Salary)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Employee>()
                .Property(e => e.Gender)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}

namespace Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Employee")]
    public partial class Employee
    {
        [Key]
        public int Emp_Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Emp_FirstName { get; set; }

        [StringLength(50)]
        public string Emp_LastName { get; set; }

        [StringLength(50)]
        public string Emp_Email { get; set; }

        [Column(TypeName = "money")]
        public decimal? Emp_Salary { get; set; }

        [StringLength(50)]
        public string Emp_Designation { get; set; }

        public DateTime? Emp_DOB { get; set; }

        [StringLength(100)]
        public string Emp_Address { get; set; }

        [StringLength(1)]
        public string Gender { get; set; }
        [Column("valid")]
        public bool? Valid { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Web.WebPages.Html;
using System.Web.WebPages.Razor;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data;

namespace MvcApplication1.Models
{
    public class Account
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Please enter your Name")]
        [StringLength(20,MinimumLength=5,ErrorMessage="Name should be more 5 characters")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Please enter your valid phone number")]
        [StringLength(12)]
        [RegularExpression(@"^[9][6][6]\d{9}", ErrorMessage = "Number must start with 966 and should be 12 digits")]        
        public string phonenum { get; set; }

        [Required(ErrorMessage = "Please enter your valid Email_id")]
        [RegularExpression(".+\\@.+\\..+", ErrorMessage = "Please Enter your valid email which contains the @ Sign")]
        public string email { get; set; }

        [Required(ErrorMessage="Please enter valid password")]
        [StringLength(20,MinimumLength=8,ErrorMessage="Password should be atleast 8 characters")]
        public string passwd { get; set; }
       
        [Required(ErrorMessage="Please enter again to confirm")]
        public string checkpasswd { get; set; }
    }

    public class AccountContext : DbContext
    {
        public DbSet<Account> Accounts { get; set; }
    }
}

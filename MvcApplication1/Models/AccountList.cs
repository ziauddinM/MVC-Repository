using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MvcApplication1.Models
{
    public class AccountList : DropCreateDatabaseIfModelChanges<AccountContext>
    {
        protected override void Seed(AccountContext context)
        {
            var accounts = new List<Account> {  
  
                 new Account {
                             id=005,
                             Name = "Abcdefghi",   
                             phonenum="966123456789",   
                             email="abcd@abcd.com",  
                             passwd="abcd1234",
                             checkpasswd="abcd1234"
                 },  
                 new Account {
                             id=006,
                             Name = "asdflkjhz",   
                             phonenum="966987654321",   
                             email="asdf@asdf.sa",  
                             passwd="asdfasdf12",
                             checkpasswd="asdfasdf12"
                 },
                 new Account { 
                             id=007, 
                             Name = "ziauddin",   
                             phonenum="966537198091",   
                             email="ziauddin@businessclouds.biz",  
                             passwd="zxcvmnb54",
                             checkpasswd="zxcvmnb54"
                 }
             };
            accounts.ForEach(a => context.Accounts.Add(a));
        }
    }
}
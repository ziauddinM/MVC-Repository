using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MvcApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.uname.Attributes.Add("onblur","javascript:validateName();");
            this.phonenum.Attributes.Add("onblur", "javascript:ValidatePhoneNumber();");
            this.email.Attributes.Add("onblur", "javascript:ValidateEmail();");
            this.passwd.Attributes.Add("onblur", "javascript:PasswordCheck();");
            this.chkpasswd.Attributes.Add("onblur", "javascript:PasswordMatch();");
        }
    }
}
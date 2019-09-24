using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using OnlineBookShop.Admin;
using System.Web.Security;

namespace OnlineBookShop.MasterPages
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.IsInRole("Admin"))
            {
                roleList.Visible = true;
            }
            else
            {
                roleList.Visible = false;
            }

        }
    }
}
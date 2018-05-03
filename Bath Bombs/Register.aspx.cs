using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Bath_Bombs
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_2_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("Admin");
            roleManager.Create(adminRole);

            var user = new IdentityUser()
            {
                UserName = Txt_Full_name.Text,
                Email = Txt_Full_name.Text
            };

            IdentityResult result = manager.Create(user, Txt_Pswd.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                RegisterError.Text = "Register Success";
            }
            else
            {
                RegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
    }

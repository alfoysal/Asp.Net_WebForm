using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using OnlineBookShop.Models;

namespace OnlineBookShop.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var user = manager.FindByName(txtUserName.Text);
            if (IsValid)
            {
                if (user !=null)
                {
                    var result = signinManager.PasswordSignIn(txtUserName.Text, Password.Text, RememberMe.Checked, shouldLockout: true);
                    if (!user.EmailConfirmed && result==SignInStatus.Success)
                    {
                        FailureText.Text = "Invalid login attemt.You must have a confirmed email account.";
                        ErrorMessage.Visible = true;
                        return;
                    }
                    switch (result)
                    {
                        case SignInStatus.Success:
                            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                            break;
                        case SignInStatus.LockedOut:
                            //Response.Redirect("/Account/Lockout");
                            FailureText.Text = "This account has been locked out, please try again later.";
                            ErrorMessage.Visible = true;
                            return;
                        case SignInStatus.RequiresVerification:
                            Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                            Request.QueryString["ReturnUrl"],
                                                            RememberMe.Checked),
                                              true);
                            break;
                        case SignInStatus.Failure:
                        default:
                            FailureText.Text = "Invalid login attempt";
                            ErrorMessage.Visible = true;
                            break;
                    }
                }
                else
                {
                    FailureText.Text = "Account not found";
                    ErrorMessage.Visible = true;
                }

                
            }
        }
    }
}
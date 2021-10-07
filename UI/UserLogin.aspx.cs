using Book_Borrow.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Book_Borrow.UI
{
    public partial class UserLogin : System.Web.UI.Page
    {
        private BookBorrowDbContext db = new BookBorrowDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string id = MemberIdTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            var v = db.Members.Where(m => m.Id == id && m.Password == password).FirstOrDefault();
            if(v != null)
            {
                //Allow access
                Session["username"] = v.Id;
                Session["fullname"] = v.FullName;
                Session["status"] = v.AccountStatus;
                Session["role"] = "user";
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                //Deny Access
                Response.Write("<script>alert('Invalid Request')</script>");
            }
        }
    }
}
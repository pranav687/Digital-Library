﻿using Book_Borrow.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Book_Borrow.UI
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        private BookBorrowDbContext db = new BookBorrowDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Member member = new Member();
            member.FullName = FullNameTextBox.Text.Trim();
            member.DateOfBirth = Convert.ToDateTime(DoBTextBox.Text.Trim());
            member.ContactNo = ContactNumberTextBox.Text.Trim();
            member.Email = EmailIdTextBox.Text.Trim();
            member.Country = CountryDropDownList.SelectedItem.Value;
            member.City = CityTextBox.Text.Trim();
            member.Pincode = PincodeTextBox.Text.Trim();
            member.FullAddress = FullAddressTextBox.Text;
            member.Id = UserIdTextBox.Text.Trim();
            member.Password = PasswordTextBox.Text.Trim();
            member.AccountStatus = "active";

            try
            {
                if (CheckIfMemberExists(member.Id))
                {
                    Response.Write("<script>alert('User Already Exists')</script>");
                }
                else
                {
                    db.Members.Add(member);
                    db.SaveChanges();
                    Response.Write("<script>alert('Sign Up successful. Login to your account now!')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Invalid Request')</script>");
            }
        }

        private bool CheckIfMemberExists(string id)
        {
            var v = db.Members.Where(m => m.Id == id).FirstOrDefault();
            return v != null;
        }
    }
}
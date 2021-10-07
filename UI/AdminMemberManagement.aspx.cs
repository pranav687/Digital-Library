using Book_Borrow.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Book_Borrow.UI
{
    public partial class AdminMemberManagement : System.Web.UI.Page
    {
        private BookBorrowDbContext db = new BookBorrowDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //MemberGridView.DataBind();
        }
        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('User Deleted successfully.')</script>");
        }
        
        protected void GoButton_Click(object sender, EventArgs e)
        {
            Clear();
            string id = MemberIdTextBox.Text.Trim();
            if (!id.Equals(""))
            {
                var v = db.Members.Where(m => m.Id == id).FirstOrDefault();
                if(v != null)
                {
                    FullNameTextBox.Text = v.FullName;
                    DoBTextBox.Text = v.DateOfBirth.Date.ToShortDateString();
                    ContactNoTextBox.Text = v.ContactNo;
                    EmailIDTextBox.Text = v.Email;
                    CountryTextBox.Text = v.Country;
                    CityTextBox.Text = v.City;
                    PincodeTextBox.Text = v.Pincode;
                    FullAddressTextBox.Text = v.FullAddress;
                }
                else
                {
                    Response.Write("<script>alert('Account Not Found')</script>");
                }
            }
        }

      
       
        private void Clear()
        {
            FullNameTextBox.Text = "";
            DoBTextBox.Text = "";
            ContactNoTextBox.Text = "";
            EmailIDTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            PincodeTextBox.Text = "";
            FullAddressTextBox.Text = "";
        }

        protected void MemberGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (e.Row.Cells[2].Text.Equals("active"))
                    {
                        e.Row.BackColor = System.Drawing.Color.LightGreen;
                    }
                    else if (e.Row.Cells[2].Text.Equals("pending"))
                    {
                        e.Row.BackColor = System.Drawing.Color.LightGoldenrodYellow;
                    }
                    else
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
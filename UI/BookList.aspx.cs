using Book_Borrow.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_Borrow.UI
{
    public partial class BookList : System.Web.UI.Page
    {
        private BookBorrowDbContext db = new BookBorrowDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            BooksGridViewDataBind();
        }
        private void BooksGridViewDataBind()
        {
            BooksGridView.DataSource = db.Books.ToList();
            BooksGridView.DataBind();
        }
    }
}
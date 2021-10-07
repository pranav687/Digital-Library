using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Book_Borrow.Models
{
    public class Book
    {
        [Key]
        public string Id { get; set; }
        public string Name { get; set; }

        public string Language { get; set; }

        public string BookDescription { get; set; }
        public int ActualStock { get; set; }
        public int CurrentStock { get; set; }
        public string BookImgLink { get; set; }

        public string Author { get; set; }
    }
}
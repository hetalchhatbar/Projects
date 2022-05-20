using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace NLevelCategories.Models
{
    public partial class TblPcategories
    {
        public long CategoryId { get; set; }
        public string PcategoryName { get; set; }
        public string C1categoryName { get; set; }
        public string C2categoryName { get; set; }
        public string C3categoryName { get; set; }
    }

    public class UserInfo
    {
        public string UserType { get; set; }
    }
}

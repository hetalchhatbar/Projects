using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace NLevelCategories.Models
{
    public partial class NLevelCategoriesContext : DbContext
    {
        

        public NLevelCategoriesContext(DbContextOptions<NLevelCategoriesContext> options)
            : base(options)
        {
        }

        public virtual DbSet<TblPcategories> TblPcategories { get; set; }

//        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//        {
//            if (!optionsBuilder.IsConfigured)
//            {
////#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
//                optionsBuilder.UseSqlServer("Server=ATLANTISPC-1984\\LOCALHOST;Database=NLevelCategories;Integrated Security=True");
//            }
//        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TblPcategories>(entity =>
            {
                entity.HasKey(e => e.CategoryId);

                entity.ToTable("tblPCategories");

                entity.Property(e => e.CategoryId).HasColumnName("CategoryID");

                entity.Property(e => e.C1categoryName)
                    .HasColumnName("C1CategoryName")
                    .HasMaxLength(50);

                entity.Property(e => e.C2categoryName)
                    .HasColumnName("C2CategoryName")
                    .HasMaxLength(50);

                entity.Property(e => e.C3categoryName)
                    .HasColumnName("C3CategoryName")
                    .HasMaxLength(50);

                entity.Property(e => e.PcategoryName)
                    .HasColumnName("PCategoryName")
                    .HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

using System.Data.Entity;

namespace DotWeb
{
    public class DotWebDb : DbContext
    {
        public DotWebDb() : base("DotWebDb") { }

        public DbSet<App> Apps { get; set; }

        public DbSet<ModuleGroup> ModuleGroups { get; set; }

        public DbSet<Module> Modules { get; set; }

        public DbSet<TableMeta> Tables { get; set; }

        public DbSet<ColumnMeta> Columns { get; set; }

        public DbSet<TableMetaRelation> TableRelations { get; set; }

        public DbSet<Permission> Permissions { get; set; }

        public DbSet<PermissionLevel> PermissionLevels { get; set; }

        public DbSet<User> Users { get; set; }

        public DbSet<UserGroup> UserGroups { get; set; }

        public DbSet<AccessRight> AccessRights { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<TableMeta>()
                .HasMany(x => x.Children).WithRequired(y => y.Parent).HasForeignKey(f => f.ParentId).WillCascadeOnDelete(false);

            modelBuilder.Entity<TableMeta>()
                .HasMany(x => x.Parents).WithRequired(y => y.Child).HasForeignKey(f => f.ChildId).WillCascadeOnDelete(false);

            modelBuilder.Entity<ColumnMeta>()
                .HasRequired(x => x.Table).WithMany(y => y.Columns).HasForeignKey(f => f.TableId);

            modelBuilder.Entity<ColumnMeta>()
                .HasOptional(x => x.ReferenceTable).WithMany().HasForeignKey(f => f.ReferenceTableId);

            modelBuilder.Entity<Module>()
                .HasRequired(x => x.Group).WithMany(g => g.Modules).HasForeignKey(f => f.GroupId);

            modelBuilder.Entity<User>()
                .HasMany(u => u.UserGroups).WithMany(ug => ug.Users).Map(
                    m => {
                        m.MapLeftKey("UserGroupId");
                        m.MapRightKey("UserId");
                        m.ToTable("UserGroupMembers");
                    }
                );

            modelBuilder.Entity<PermissionLevel>().HasRequired(p => p.App).WithMany().HasForeignKey(p => p.AppId).WillCascadeOnDelete(false);

            modelBuilder.Entity<PrincipalBase>().ToTable("Principals").HasRequired(p => p.App).WithMany().HasForeignKey(p => p.AppId).WillCascadeOnDelete(false);

            modelBuilder.Entity<AccessRight>().HasRequired(r => r.Principal).WithMany().HasForeignKey(r => r.PrincipalId).WillCascadeOnDelete(false);

            modelBuilder.Entity<AccessRight>().HasRequired(r => r.PermissionLevel).WithMany().HasForeignKey(r => r.PermissionLevelId).WillCascadeOnDelete(false);

            //modelBuilder.Entity<PrincipalBase>()
            //    .HasMany(p => p.PermissionLevels).WithMany(l => l.Principals).Map(
            //        m => {
            //            m.MapLeftKey("PermissionLevelId");
            //            m.MapRightKey("PrincipalId");
            //            m.ToTable("PrincipalLevels");
            //        }
            //    );

        }
    }
}

namespace DotWeb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Security : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.Groups", newName: "ModuleGroups");
            CreateTable(
                "dbo.AccessRights",
                c => new
                    {
                        Id = c.Long(nullable: false, identity: true),
                        PrincipalId = c.String(nullable: false, maxLength: 128),
                        PrincipalType = c.Int(nullable: false),
                        RoleId = c.Int(nullable: false),
                        SecuredObjectId = c.Int(nullable: false),
                        SecuredObjectType = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Roles", t => t.RoleId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.Roles",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 50),
                        Description = c.String(),
                        AppId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Apps", t => t.AppId)
                .Index(t => t.AppId);
            
            CreateTable(
                "dbo.Permissions",
                c => new
                    {
                        Id = c.Long(nullable: false, identity: true),
                        PermissionType = c.Int(nullable: false),
                        RoleId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Roles", t => t.RoleId, cascadeDelete: true)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.UserGroups",
                c => new
                    {
                        Code = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 50),
                        Description = c.String(),
                        AppId = c.Int(),
                    })
                .PrimaryKey(t => t.Code)
                .ForeignKey("dbo.Apps", t => t.AppId)
                .Index(t => t.AppId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.UserGroups", "AppId", "dbo.Apps");
            DropForeignKey("dbo.AccessRights", "RoleId", "dbo.Roles");
            DropForeignKey("dbo.Permissions", "RoleId", "dbo.Roles");
            DropForeignKey("dbo.Roles", "AppId", "dbo.Apps");
            DropIndex("dbo.UserGroups", new[] { "AppId" });
            DropIndex("dbo.Permissions", new[] { "RoleId" });
            DropIndex("dbo.Roles", new[] { "AppId" });
            DropIndex("dbo.AccessRights", new[] { "RoleId" });
            DropTable("dbo.UserGroups");
            DropTable("dbo.Permissions");
            DropTable("dbo.Roles");
            DropTable("dbo.AccessRights");
            RenameTable(name: "dbo.ModuleGroups", newName: "Groups");
        }
    }
}

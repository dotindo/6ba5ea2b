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
                        PrincipalId = c.Int(nullable: false),
                        PermissionLevelId = c.Int(nullable: false),
                        SecuredObjectId = c.Int(nullable: false),
                        SecuredObjectType = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.PermissionLevels", t => t.PermissionLevelId)
                .ForeignKey("dbo.Principals", t => t.PrincipalId)
                .Index(t => t.PrincipalId)
                .Index(t => t.PermissionLevelId);
            
            CreateTable(
                "dbo.PermissionLevels",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 50),
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
                        PermissionLevelId = c.Long(nullable: false),
                        PermissionLevel_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.PermissionLevels", t => t.PermissionLevel_Id)
                .Index(t => t.PermissionLevel_Id);
            
            CreateTable(
                "dbo.Principals",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        AppId = c.Int(nullable: false),
                        Username = c.String(maxLength: 50),
                        FirstName = c.String(maxLength: 50),
                        LastName = c.String(maxLength: 50),
                        EmailAddress = c.String(maxLength: 100),
                        Name = c.String(),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Apps", t => t.AppId)
                .Index(t => t.AppId);
            
            CreateTable(
                "dbo.UserGroupMembers",
                c => new
                    {
                        UserGroupId = c.Int(nullable: false),
                        UserId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserGroupId, t.UserId })
                .ForeignKey("dbo.Principals", t => t.UserGroupId)
                .ForeignKey("dbo.Principals", t => t.UserId)
                .Index(t => t.UserGroupId)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AccessRights", "PrincipalId", "dbo.Principals");
            DropForeignKey("dbo.UserGroupMembers", "UserId", "dbo.Principals");
            DropForeignKey("dbo.UserGroupMembers", "UserGroupId", "dbo.Principals");
            DropForeignKey("dbo.Principals", "AppId", "dbo.Apps");
            DropForeignKey("dbo.AccessRights", "PermissionLevelId", "dbo.PermissionLevels");
            DropForeignKey("dbo.Permissions", "PermissionLevel_Id", "dbo.PermissionLevels");
            DropForeignKey("dbo.PermissionLevels", "AppId", "dbo.Apps");
            DropIndex("dbo.UserGroupMembers", new[] { "UserId" });
            DropIndex("dbo.UserGroupMembers", new[] { "UserGroupId" });
            DropIndex("dbo.Principals", new[] { "AppId" });
            DropIndex("dbo.Permissions", new[] { "PermissionLevel_Id" });
            DropIndex("dbo.PermissionLevels", new[] { "AppId" });
            DropIndex("dbo.AccessRights", new[] { "PermissionLevelId" });
            DropIndex("dbo.AccessRights", new[] { "PrincipalId" });
            DropTable("dbo.UserGroupMembers");
            DropTable("dbo.Principals");
            DropTable("dbo.Permissions");
            DropTable("dbo.PermissionLevels");
            DropTable("dbo.AccessRights");
            RenameTable(name: "dbo.ModuleGroups", newName: "Groups");
        }
    }
}

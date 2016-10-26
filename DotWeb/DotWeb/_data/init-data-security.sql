INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'c42138f3-882b-4eb9-9ca3-1a613ed54ef5', N'agus.suhanto@gmail.com', 0, N'AKZv+DNbBbym7dyWEehPDD9IbsmZHgR4nbC1Hxk38O77hR3RCTAJaf6NGkPjid2jLg==', N'9bf49df3-6d92-48ad-b780-1e089d7f5273', NULL, 0, 0, NULL, 1, 0, N'agus')

INSERT [dbo].[ApplicationUser] ([Id], [FirstName], [LastName]) VALUES 
	(N'c42138f3-882b-4eb9-9ca3-1a613ed54ef5', N'Agus', N'Suhanto')

INSERT [dbo].[UserGroups] ([Code], [Name], [Description], [AppId]) VALUES 
	(N'b410a15e-a4dc-47c0-8821-5b11719c527c', N'Administrators', 'Administrators of all applications', null)
INSERT [dbo].[UserGroups] ([Code], [Name], [Description], [AppId]) VALUES 
	(N'547c24e4-e620-4375-95f6-7f87e30e369e', N'Administrators', 'Administrators of Northwind Sample', 2)
INSERT [dbo].[UserGroups] ([Code], [Name], [Description], [AppId]) VALUES 
	(N'ef8e6353-bb56-4a9e-ae42-5db03833b35e', N'Everyone', 'Everyone of Northwind Sample', 2)


SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (1, 'Full Control', null, 2)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (2, 'Editor', null, 2)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (3, 'Reader', null, 2)
SET IDENTITY_INSERT [dbo].[Roles] OFF

SET IDENTITY_INSERT [dbo].[Permissions] ON
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (2, 2, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (3, 3, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (4, 4, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (5, 5, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (6, 6, 1)

INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (7, 1, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (8, 2, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (9, 3, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (10, 4, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (11, 5, 2)

INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (12, 1, 3)
INSERT [dbo].[Permissions] ([Id], [PermissionType],[RoleId]) VALUES (13, 5, 3)
SET IDENTITY_INSERT [dbo].[Permissions] OFF

SET IDENTITY_INSERT [dbo].[AccessRights] ON
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(1, '547c24e4-e620-4375-95f6-7f87e30e369e', 2, 1, 2, 1)
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(2, 'ef8e6353-bb56-4a9e-ae42-5db03833b35e', 2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[AccessRights] OFF
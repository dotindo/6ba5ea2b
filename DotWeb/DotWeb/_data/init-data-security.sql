INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'c42138f3-882b-4eb9-9ca3-1a613ed54ef5', N'agus.suhanto@gmail.com', 0, N'AKZv+DNbBbym7dyWEehPDD9IbsmZHgR4nbC1Hxk38O77hR3RCTAJaf6NGkPjid2jLg==', N'9bf49df3-6d92-48ad-b780-1e089d7f5273', NULL, 0, 0, NULL, 1, 0, N'agus')
INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'fa646366-7cc2-4129-86c7-1d486af1a2e8', N'admin@test.com', 0, N'AIq+oYzJL/KHRSiKGBnPZpgROfPVkiAFQz7xSNzpaL6os7Vz3o5x6NzBaP1+GmSatg==', N'a2d1c706-5f11-4fad-bc28-352f9dfc8b07', NULL, 0, 0, NULL, 1, 0, N'admin')
INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'570a3e29-fdfe-4129-a7d4-2aa74941de21', N'editor@test.com', 0, N'AGbKO8u0nmNCPSyWPViH35f7B+NsGMs4VDFuIJSSJwHm3K/N/1z9hoqLhPBhUae7GQ==', N'bcc9ad0b-c172-44fd-847f-c2d1e5a243ad', NULL, 0, 0, NULL, 1, 0, N'editor')
INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'907030bc-46d5-40c0-af39-34bfa7ea1b5b', N'reader@test.com', 0, N'ACdrbsoFWdCh7axGD4f7WGLDh5wMYNSKd2+UqK7v6RXOJ7R02W6T1+/OIBt2GfTYYA==', N'4980380b-fdc2-4386-a161-e0bca28741d6', NULL, 0, 0, NULL, 1, 0, N'reader')
INSERT [dbo].[IdentityUser] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) 
	VALUES (N'fe1f953d-0300-4b2f-ac11-d629e96c4739', N'noaccess@test.com', 0, N'AERsXOclYQBZ0uNAEM5Q5wVqTyk40uVgFrzmQUqocZbKh1TV6SKi5kTmQKH5lZFxTQ==', N'b20f5722-6d00-4e37-9980-c0b6bfab9a5f', NULL, 0, 0, NULL, 1, 0, N'noaccess')


INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Email]) 
	VALUES (N'c42138f3-882b-4eb9-9ca3-1a613ed54ef5', 'Agus', N'Suhanto', 'agus', 'agus.suhanto@gmail.com')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Email]) 
	VALUES (N'fa646366-7cc2-4129-86c7-1d486af1a2e8', 'Admin', null, 'admin', 'admin@test.com')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Email]) 
	VALUES (N'570a3e29-fdfe-4129-a7d4-2aa74941de21', 'Editor', null, 'editor', 'editor@test.com')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Email]) 
	VALUES (N'907030bc-46d5-40c0-af39-34bfa7ea1b5b', 'Reader', null, 'reader', 'reader@test.com');
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Email]) 
	VALUES (N'fe1f953d-0300-4b2f-ac11-d629e96c4739', 'Noaccess', null, 'noaccess', 'noaccess@test.com');


INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'b410a15e-a4dc-47c0-8821-5b11719c527c', 'Administrators', 'Administrators of all applications', null)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'547c24e4-e620-4375-95f6-7f87e30e369e', 'Administrators', 'Administrators of Northwind Sample', 2)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'ef8e6353-bb56-4a9e-ae42-5db03833b35e', 'Everyone', 'Everyone of Northwind Sample', 2)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'f6639693-c915-4ba7-a4b8-37b511141a5e', 'Editors', 'Editors of Northwind Sample', 2)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'b50de242-2758-4ff5-a644-47b506ee39dd', 'Readers', 'Readers of Northwind Sample', 2)

INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'cf6a4faf-dff0-429a-82b1-a8875bd4b398', 'Administrators', 'Administrators of Mercedes App', 3)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'440efbaf-4808-4dee-b4fe-952cf9377bc6', 'Editors', 'Editors of Mercedes App', 3)
INSERT [dbo].[UserGroups] ([Id], [GroupName], [Description], [AppId]) 
	VALUES (N'a58dc8e7-bd53-43cf-9c86-551f600702d7', 'Readers', 'Readers of Mercedes App', 3)


-- user agus, admin are a member of Administrators group of App Id 2
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'c42138f3-882b-4eb9-9ca3-1a613ed54ef5', N'547c24e4-e620-4375-95f6-7f87e30e369e')
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'fa646366-7cc2-4129-86c7-1d486af1a2e8', N'547c24e4-e620-4375-95f6-7f87e30e369e')
-- user editor is a member of Editors group
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'570a3e29-fdfe-4129-a7d4-2aa74941de21', N'f6639693-c915-4ba7-a4b8-37b511141a5e')
-- user reader is a member of Readers group
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'907030bc-46d5-40c0-af39-34bfa7ea1b5b', N'b50de242-2758-4ff5-a644-47b506ee39dd')

-- user admin are a member of Administrators group of App Id 3
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'fa646366-7cc2-4129-86c7-1d486af1a2e8', N'cf6a4faf-dff0-429a-82b1-a8875bd4b398')
-- user editor is a member of Editors group
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'570a3e29-fdfe-4129-a7d4-2aa74941de21', N'440efbaf-4808-4dee-b4fe-952cf9377bc6')
-- user reader is a member of Readers group
INSERT [dbo].[UserGroupMembers] ([UserId], [GroupId]) VALUES (N'907030bc-46d5-40c0-af39-34bfa7ea1b5b', N'a58dc8e7-bd53-43cf-9c86-551f600702d7')


SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (1, 'Full Control', null, 2)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (2, 'Editor', null, 2)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (3, 'Reader', null, 2)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (4, 'No Access', null, 2)
SET IDENTITY_INSERT [dbo].[Roles] OFF

SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (5, 'Full Control', null, 3)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (6, 'Editor', null, 3)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (7, 'Reader', null, 3)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [AppId]) VALUES (8, 'No Access', null, 3)
SET IDENTITY_INSERT [dbo].[Roles] OFF


SET IDENTITY_INSERT [dbo].[Permissions] ON
-- Full control on 2
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (2, 2, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (3, 3, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (4, 4, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (5, 5, 1)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (6, 9, 1)

-- Editor on 2
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (7, 1, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (8, 2, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (9, 3, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (10, 4, 2)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (11, 5, 2)

-- Reader on 2
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (12, 1, 3)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (13, 5, 3)

-- No Access on 2
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (14, 0, 4)
SET IDENTITY_INSERT [dbo].[Permissions] OFF

SET IDENTITY_INSERT [dbo].[Permissions] ON
-- Full control on 3
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (15, 1, 5)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (16, 2, 5)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (17, 3, 5)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (18, 4, 5)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (19, 5, 5)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (20, 9, 5)

-- Reader on 3
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (21, 1, 7)
INSERT [dbo].[Permissions] ([Id], [PermissionType], [RoleId]) VALUES (22, 5, 7)
SET IDENTITY_INSERT [dbo].[Permissions] OFF

SET IDENTITY_INSERT [dbo].[AccessRights] ON
-- give Administrators access : Full Control to AppId 2
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(1, '547c24e4-e620-4375-95f6-7f87e30e369e', 2, 1, 2, 1)
-- give Editors access : Editor to AppId 2
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(2, 'f6639693-c915-4ba7-a4b8-37b511141a5e', 2, 2, 2, 1)
-- give Readers access : Reader to AppId 2
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(3, 'b50de242-2758-4ff5-a644-47b506ee39dd', 2, 3, 2, 1)
-- give Everyone access : Reader to AppId 2
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(4, 'ef8e6353-bb56-4a9e-ae42-5db03833b35e', 2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[AccessRights] OFF

SET IDENTITY_INSERT [dbo].[AccessRights] ON
-- give Administrators access : Full Control to AppId 3
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(5, 'cf6a4faf-dff0-429a-82b1-a8875bd4b398', 2, 5, 3, 1)
-- give Readers access : Reader to AppId 3
INSERT [dbo].[AccessRights] ([Id], [PrincipalId], [PrincipalType], [RoleId], [SecuredObjectId], [SecuredObjectType])
	VALUES(6, 'a58dc8e7-bd53-43cf-9c86-551f600702d7', 2, 7, 3, 1)
SET IDENTITY_INSERT [dbo].[AccessRights] OFF
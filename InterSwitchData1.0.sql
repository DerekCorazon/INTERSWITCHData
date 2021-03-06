USE [InterSwitch1.0]
GO
/****** Object:  Table [dbo].[ApprovedRequests]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedRequests](
	[ApprovalCode] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[startDate] [date] NULL,
	[EndDate] [date] NULL,
	[RoleCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ApprovalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankRoles]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankRoles](
	[RoleCode] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[BranchCode] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankUsers]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankUsers](
	[IntitutionCode] [int] NULL,
	[BranchCode] [int] NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorporateRoles]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateRoles](
	[RoleCode] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorporateUsers]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateUsers](
	[InstitutionCode] [int] NULL,
	[CorporateType] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CorporateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[institutions]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[institutions](
	[IntitutionCode] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IntitutionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterSwitchRoles]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterSwitchRoles](
	[RoleCode] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterSwitchUsers]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterSwitchUsers](
	[InstitutionCode] [int] NULL,
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leaveRequests]    Script Date: 5/19/2022 1:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leaveRequests](
	[EmployeeID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[startDate] [date] NULL,
	[EndDate] [date] NULL,
	[RoleCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankUsers]  WITH CHECK ADD  CONSTRAINT [FK_BankUsers_BankRoles1] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[BankRoles] ([RoleCode])
GO
ALTER TABLE [dbo].[BankUsers] CHECK CONSTRAINT [FK_BankUsers_BankRoles1]
GO
ALTER TABLE [dbo].[BankUsers]  WITH CHECK ADD  CONSTRAINT [FK_BankUsers_Banks1] FOREIGN KEY([BranchCode])
REFERENCES [dbo].[Banks] ([BranchCode])
GO
ALTER TABLE [dbo].[BankUsers] CHECK CONSTRAINT [FK_BankUsers_Banks1]
GO
ALTER TABLE [dbo].[BankUsers]  WITH CHECK ADD  CONSTRAINT [FK_BankUsers_institutions] FOREIGN KEY([IntitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[BankUsers] CHECK CONSTRAINT [FK_BankUsers_institutions]
GO
ALTER TABLE [dbo].[BankUsers]  WITH CHECK ADD  CONSTRAINT [FK_BankUsers_institutions1] FOREIGN KEY([IntitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[BankUsers] CHECK CONSTRAINT [FK_BankUsers_institutions1]
GO
ALTER TABLE [dbo].[CorporateUsers]  WITH CHECK ADD  CONSTRAINT [FK_CorporateUsers_CorporateRoles] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[CorporateRoles] ([RoleCode])
GO
ALTER TABLE [dbo].[CorporateUsers] CHECK CONSTRAINT [FK_CorporateUsers_CorporateRoles]
GO
ALTER TABLE [dbo].[CorporateUsers]  WITH CHECK ADD  CONSTRAINT [FK_CorporateUsers_institutions] FOREIGN KEY([InstitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[CorporateUsers] CHECK CONSTRAINT [FK_CorporateUsers_institutions]
GO
ALTER TABLE [dbo].[CorporateUsers]  WITH CHECK ADD  CONSTRAINT [FK_CorporateUsers_institutions1] FOREIGN KEY([InstitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[CorporateUsers] CHECK CONSTRAINT [FK_CorporateUsers_institutions1]
GO
ALTER TABLE [dbo].[CorporateUsers]  WITH CHECK ADD  CONSTRAINT [FK_CorporateUsers_institutions2] FOREIGN KEY([InstitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[CorporateUsers] CHECK CONSTRAINT [FK_CorporateUsers_institutions2]
GO
ALTER TABLE [dbo].[InterSwitchUsers]  WITH CHECK ADD  CONSTRAINT [FK_InterSwitchUsers_institutions] FOREIGN KEY([InstitutionCode])
REFERENCES [dbo].[institutions] ([IntitutionCode])
GO
ALTER TABLE [dbo].[InterSwitchUsers] CHECK CONSTRAINT [FK_InterSwitchUsers_institutions]
GO
ALTER TABLE [dbo].[InterSwitchUsers]  WITH CHECK ADD  CONSTRAINT [FK_InterSwitchUsers_InterSwitchRoles] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[InterSwitchRoles] ([RoleCode])
GO
ALTER TABLE [dbo].[InterSwitchUsers] CHECK CONSTRAINT [FK_InterSwitchUsers_InterSwitchRoles]
GO
ALTER TABLE [dbo].[leaveRequests]  WITH CHECK ADD  CONSTRAINT [FK_leaveRequests_InterSwitchRoles] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[InterSwitchRoles] ([RoleCode])
GO
ALTER TABLE [dbo].[leaveRequests] CHECK CONSTRAINT [FK_leaveRequests_InterSwitchRoles]
GO
ALTER TABLE [dbo].[leaveRequests]  WITH CHECK ADD  CONSTRAINT [FK_leaveRequests_InterSwitchUsers] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[InterSwitchUsers] ([EmployeeID])
GO
ALTER TABLE [dbo].[leaveRequests] CHECK CONSTRAINT [FK_leaveRequests_InterSwitchUsers]
GO

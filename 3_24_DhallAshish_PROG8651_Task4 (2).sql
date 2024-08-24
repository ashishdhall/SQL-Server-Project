USE [Employee_Datastore]
GO

/****** Object:  Table [Schema1].[Countries]    Script Date: 8/1/2024 5:44:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Schema1].[Countries](
	[CountryID] [nchar](20) NOT NULL,
	[RegionID] [nchar](20) NULL,
	[CountryName] [nchar](40) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema1].[EmployeePersonal](
	[PersonalID] [smallint] NOT NULL,
	[EmployeeID] [smallint] NULL,
	[DateofBirth] [date] NULL,
	[SocialInsuranceNumber] [nvarchar](50) NULL,
	[AllergyName] [nchar](10) NULL,
	[AllergyDescription] [nchar](50) NULL,
	[Epipen] [ntext] NULL,
	[DisabilityName] [nchar](30) NULL,
	[DisabilityDiscription] [nchar](100) NULL,
	[Gender] [nchar](20) NULL,
 CONSTRAINT [PK_EmployeePersonal] PRIMARY KEY CLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [Schema1].[Regions](
	[RegionID] [smallint] NOT NULL,
	[RegionName] [nchar](30) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema2].[Departments](
	[DepartmentID] [smallint] NOT NULL,
	[FacilityID] [smallint] NULL,
	[DepartmentName] [nchar](20) NULL,
	[DepartmentDesc] [nchar](20) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema2].[Dependents](
	[DependentID] [smallint] NOT NULL,
	[EmployeeID] [smallint] NULL,
	[Relationships] [nchar](20) NULL,
	[FName] [nchar](20) NULL,
	[LName] [nchar](20) NULL,
	[DateofBirth] [date] NULL,
 CONSTRAINT [PK_Dependents] PRIMARY KEY CLUSTERED 
(
	[DependentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema2].[Employees](
	[EmplyeeID] [nvarchar](20) NOT NULL,
	[RoleID] [nchar](20) NULL,
	[ManagerID] [smallint] NULL,
	[DepartmentID] [smallint] NULL,
	[EmpAddressID] [smallint] NULL,
	[FName] [nchar](20) NULL,
	[LName] [nchar](20) NULL,
	[Salary] [smallint] NULL,
	[HIreDate] [date] NULL,
	[PersonalEmail] [nchar](50) NULL,
	[PersonalPhoneNumber] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmplyeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [Schema2].[Roles](
	[RoleID] [smallint] NOT NULL,
	[PositionTitle] [nchar](20) NULL,
	[PositionDescription] [nchar](40) NULL,
	[ProbationLength] [smallint] NULL,
	[MinSalary] [smallint] NULL,
	[MaxSalary] [smallint] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema3].[FacilityAddress](
	[FacilityID] [smallint] NOT NULL,
	[CountryID] [smallint] NULL,
	[FacilityName] [nchar](30) NULL,
 CONSTRAINT [PK_FacilityAddress] PRIMARY KEY CLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema4].[EmergencyContacts](
	[ContactID] [smallint] NOT NULL,
	[EmployeeID] [smallint] NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nchar](20) NULL,
	[ContactNumber] [int] NULL,
	[ContactAltNumber] [int] NULL,
 CONSTRAINT [PK_EmergencyContacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema4].[EmployeeContacts](
	[EmpContactID] [smallint] NOT NULL,
	[EmployeeID] [smallint] NULL,
	[FacilityID] [smallint] NULL,
	[WorkExtension] [nchar](30) NULL,
	[OfficeNumber] [nchar](30) NULL,
 CONSTRAINT [PK_EmployeeContacts] PRIMARY KEY CLUSTERED 
(
	[EmpContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema5].[Address](
	[AddressID] [nchar](10) NOT NULL,
	[FacilityID] [nchar](20) NULL,
	[StreetNumber] [nchar](30) NULL,
	[StreetName] [nchar](40) NULL,
	[StreetType] [nchar](30) NULL,
	[PostalCode] [nchar](40) NULL,
	[City] [nchar](40) NULL,
	[Province] [nchar](40) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Schema5].[EmployeeAddress](
	[EmpAddressID] [smallint] NOT NULL,
	[CountryID] [smallint] NULL,
	[HomeType] [nchar](20) NULL,
	[UnitNumber] [nchar](30) NULL,
 CONSTRAINT [PK_EmployeeAddress] PRIMARY KEY CLUSTERED 
(
	[EmpAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



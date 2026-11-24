
CREATE TABLE [dbo].[Dim_Employee](
	[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](150) NOT NULL,
	[JobTitle] [nvarchar](100) NULL,
	[Department] [nvarchar](100) NULL,
	[HireDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[LoadDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NULL,
 CONSTRAINT [PK_Dim_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Dim_Employee_EmployeeID] UNIQUE NONCLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Employee] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Dim_Employee] ADD  DEFAULT (sysdatetime()) FOR [LoadDate]
GO



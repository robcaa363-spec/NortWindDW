
CREATE TABLE [dbo].[Dim_Branch](
	[BranchKey] [int] IDENTITY(1,1) NOT NULL,
	[BranchID] [int] NOT NULL,
	[BranchName] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[LoadDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NULL,
 CONSTRAINT [PK_Dim_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Dim_Branch_BranchID] UNIQUE NONCLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Branch] ADD  DEFAULT (sysdatetime()) FOR [LoadDate]
GO



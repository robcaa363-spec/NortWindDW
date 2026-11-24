
CREATE TABLE [dbo].[Dim_Customer](
	[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](150) NOT NULL,
	[CustomerType] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Phone] [nvarchar](30) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[EffectiveStartDate] [date] NOT NULL,
	[EffectiveEndDate] [date] NULL,
	[IsCurrent] [bit] NOT NULL,
	[LoadDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Dim_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Customer] ADD  DEFAULT ('1900-01-01') FOR [EffectiveStartDate]
GO

ALTER TABLE [dbo].[Dim_Customer] ADD  DEFAULT ((1)) FOR [IsCurrent]
GO

ALTER TABLE [dbo].[Dim_Customer] ADD  DEFAULT (sysdatetime()) FOR [LoadDate]
GO



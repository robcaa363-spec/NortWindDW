
CREATE TABLE [dbo].[Dim_Product](
	[ProductKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductCode] [nvarchar](50) NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Category] [nvarchar](100) NULL,
	[Subcategory] [nvarchar](100) NULL,
	[Brand] [nvarchar](100) NULL,
	[UnitOfMeasure] [nvarchar](30) NULL,
	[ListPrice] [decimal](18, 2) NULL,
	[StandardCost] [decimal](18, 2) NULL,
	[EffectiveStartDate] [date] NOT NULL,
	[EffectiveEndDate] [date] NULL,
	[IsCurrent] [bit] NOT NULL,
	[LoadDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Dim_Product] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Product] ADD  DEFAULT ('1900-01-01') FOR [EffectiveStartDate]
GO

ALTER TABLE [dbo].[Dim_Product] ADD  DEFAULT ((1)) FOR [IsCurrent]
GO

ALTER TABLE [dbo].[Dim_Product] ADD  DEFAULT (sysdatetime()) FOR [LoadDate]
GO



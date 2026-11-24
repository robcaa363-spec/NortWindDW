

CREATE TABLE [dbo].[Fact_Sales](
	[SalesKey] [bigint] IDENTITY(1,1) NOT NULL,
	[DateKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[BranchKey] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](30) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[GrossAmount] [decimal](18, 2) NOT NULL,
	[NetAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
	[Margin]  AS ([NetAmount]-[TotalCost]) PERSISTED,
	[LoadDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Fact_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Fact_Sales_Line] UNIQUE NONCLUSTERED 
(
	[InvoiceNumber] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Sales] ADD  DEFAULT ((0)) FOR [DiscountAmount]
GO

ALTER TABLE [dbo].[Fact_Sales] ADD  DEFAULT ((0)) FOR [TaxAmount]
GO

ALTER TABLE [dbo].[Fact_Sales] ADD  DEFAULT ((0)) FOR [TotalCost]
GO

ALTER TABLE [dbo].[Fact_Sales] ADD  DEFAULT (sysdatetime()) FOR [LoadDate]
GO

ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Branch] FOREIGN KEY([BranchKey])
REFERENCES [dbo].[Dim_Branch] ([BranchKey])
GO

ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Branch]
GO

ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Customer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Dim_Customer] ([CustomerKey])
GO

ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Customer]
GO

ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Date] FOREIGN KEY([DateKey])
REFERENCES [dbo].[Dim_Date] ([DateKey])
GO

ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Date]
GO

ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Employee] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[Dim_Employee] ([EmployeeKey])
GO

ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Employee]
GO

ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Product] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[Dim_Product] ([ProductKey])
GO

ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Product]
GO



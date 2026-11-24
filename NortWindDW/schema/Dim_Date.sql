
CREATE TABLE [dbo].[Dim_Date](
	[DateKey] [int] NOT NULL,
	[FullDate] [date] NOT NULL,
	[CalendarYear] [smallint] NOT NULL,
	[CalendarQuarter] [tinyint] NOT NULL,
	[MonthNumber] [tinyint] NOT NULL,
	[MonthName] [varchar](15) NOT NULL,
	[DayOfMonth] [tinyint] NOT NULL,
	[DayOfWeek] [tinyint] NOT NULL,
	[DayName] [varchar](15) NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[IsWeekend] [bit] NOT NULL,
	[YearMonth] [char](7) NOT NULL,
 CONSTRAINT [PK_Dim_Date] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



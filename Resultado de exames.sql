USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [exames].[anti_jo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [exames].[anti_jo] ADD  DEFAULT (getdate()) FOR [data]
GO



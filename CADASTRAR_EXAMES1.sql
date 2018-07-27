USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ALBUMINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ALBUMINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ALBUMINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ALBUMINA]
 add data_lct datetime

 ----------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[LIPASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[LIPASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[LIPASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[LIPASE]
 add data_lct datetime

 -----------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CREATINOQUINASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CREATINOQUINASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CREATINOQUINASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CREATINOQUINASE]
 add data_lct datetime

 ----------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CLORO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CLORO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CLORO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CLORO]
 add data_lct datetime

 -------------------------------------------------------

    USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[FOSFORO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[FOSFORO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[FOSFORO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[FOSFORO]
 add data_lct datetime

 -------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[GLICOSE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[GLICOSE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[GLICOSE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[GLICOSE]
 add data_lct datetime

 -----------------------------------------------------

    USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[GLICOSE_PÓS_PRANDIAL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[GLICOSE_PÓS_PRANDIAL] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[GLICOSE_PÓS_PRANDIAL]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[GLICOSE_PÓS_PRANDIAL]
 add data_lct datetime

 --------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ALANINA_AMINOTRANSFERASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ALANINA_AMINOTRANSFERASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ALANINA_AMINOTRANSFERASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ALANINA_AMINOTRANSFERASE]
 add data_lct datetime

 ----------------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ASPARTATO_AMINOTRANSFERASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ASPARTATO_AMINOTRANSFERASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ASPARTATO_AMINOTRANSFERASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ASPARTATO_AMINOTRANSFERASE]
 add data_lct datetime

 -------------------------------------------------------------

 
     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[FOSFATASE_ALCALINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[FOSFATASE_ALCALINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[FOSFATASE_ALCALINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[FOSFATASE_ALCALINA]
 add data_lct datetime

 ---------------------------------------------------------------------

  
     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[gama_glutamil_tranSferase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[gama_glutamil_tranSferase] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[gama_glutamil_tranSferase]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[gama_glutamil_tranSferase]
 add data_lct datetime

 ------------------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PROTEINAS_TOTAL_FRACOES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PROTEINAS_TOTAL_FRACOES] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PROTEINAS_TOTAL_FRACOES]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PROTEINAS_TOTAL_FRACOES]
 add data_lct datetime

 -------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[FERRO_SERICO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[FERRO_SERICO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[FERRO_SERICO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[FERRO_SERICO]
 add data_lct datetime

 ----------------------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CAP_FIXACAO_FERRO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CAP_FIXACAO_FERRO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CAP_FIXACAO_FERRO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CAP_FIXACAO_FERRO]
 add data_lct datetime

 -------------------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ACIDO_FOLICO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ACIDO_FOLICO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ACIDO_FOLICO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ACIDO_FOLICO]
 add data_lct datetime

  -------------------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CLEARENCE_CREATININA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CLEARENCE_CREATININA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CLEARENCE_CREATININA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CLEARENCE_CREATININA]
 add data_lct datetime

 ------------------------------------------------------------

 
 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[EAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[EAS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[EAS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[EAS]
 add data_lct datetime

 ---------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[MICROALBUMINURIA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[MICROALBUMINURIA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[MICROALBUMINURIA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[MICROALBUMINURIA]
 add data_lct datetime

 ---------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PROTEINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PROTEINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PROTEINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PROTEINA]
 add data_lct datetime

 --------------------------------------------------------------------

    USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ELEM_ANORMAIS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ELEM_ANORMAIS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ELEM_ANORMAIS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ELEM_ANORMAIS]
 add data_lct datetime

 -------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[OXIURO_FITA_GOMADA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[OXIURO_FITA_GOMADA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[OXIURO_FITA_GOMADA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[OXIURO_FITA_GOMADA]
 add data_lct datetime

 ---------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PARASITOLOGICO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PARASITOLOGICO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PARASITOLOGICO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PARASITOLOGICO]
 add data_lct datetime

 ------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PARASITOLOGICO_COLETA_MULTIPLA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PARASITOLOGICO_COLETA_MULTIPLA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PARASITOLOGICO_COLETA_MULTIPLA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PARASITOLOGICO_COLETA_MULTIPLA]
 add data_lct datetime

 ---------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[T_DE_PROTROMBINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[T_DE_PROTROMBINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[T_DE_PROTROMBINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[T_DE_PROTROMBINA]
 add data_lct datetime

 ---------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[RETICULOCITOS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[RETICULOCITOS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[RETICULOCITOS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[RETICULOCITOS]
 add data_lct datetime

 -----------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[COOMBS_INDIRETO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[COOMBS_INDIRETO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[COOMBS_INDIRETO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[COOMBS_INDIRETO]
 add data_lct datetime

 ----------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[COOMBS_DIRETO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[COOMBS_DIRETO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[COOMBS_DIRETO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[COOMBS_DIRETO]
 add data_lct datetime

 ------------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[TESTE_AFOICAMENTO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[TESTE_AFOICAMENTO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[TESTE_AFOICAMENTO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[TESTE_AFOICAMENTO]
 add data_lct datetime

 -------------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[BAAR_1_AMOSTRA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[BAAR_1_AMOSTRA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[BAAR_1_AMOSTRA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[BAAR_1_AMOSTRA]
 add data_lct datetime

 ------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[BAAR_2_AMOSTRA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[BAAR_2_AMOSTRA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[BAAR_2_AMOSTRA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[BAAR_2_AMOSTRA]
 add data_lct datetime

 ----------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[BAAR_3_AMOSTRA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[BAAR_3_AMOSTRA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[BAAR_3_AMOSTRA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[BAAR_3_AMOSTRA]
 add data_lct datetime

 ----------------------------------------------------------------------

 
   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[BACTERIOSCOPIA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[BACTERIOSCOPIA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[BACTERIOSCOPIA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[BACTERIOSCOPIA]
 add data_lct datetime

 -------------------------------------------------------------------------

    USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[URINOCULTURA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[URINOCULTURA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[URINOCULTURA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[URINOCULTURA]
 add data_lct datetime

 --------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CULTURA_P_GERMES_COMUNS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CULTURA_P_GERMES_COMUNS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CULTURA_P_GERMES_COMUNS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CULTURA_P_GERMES_COMUNS]
 add data_lct datetime

 -----------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CULTURA_P_BK](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CULTURA_P_BK] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CULTURA_P_BK]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CULTURA_P_BK]
 add data_lct datetime

 -----------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[HBS_AG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[HBS_AG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[HBS_AG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[HBS_AG]
 add data_lct datetime

 ---------------------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HBS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HBS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HBS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HBS]
 add data_lct datetime

 -----------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[HBe_AG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[HBe_AG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[HBe_AG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[HBe_AG]
 add data_lct datetime

 ----------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HBe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HBe] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HBe]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HBe]
 add data_lct datetime

 ----------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HBc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HBc] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HBc]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HBc]
 add data_lct datetime

 -------------------------------------------

 
 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HBc_IgM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HBc_IgM] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HBc_IgM]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HBc_IgM]
 add data_lct datetime

 --------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HCV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HCV] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HCV]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HCV]
 add data_lct datetime

 -------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HAV_IgG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HAV_IgG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HAV_IgG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HAV_IgG]
 add data_lct datetime

 --------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HAV_IgM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HAV_IgM] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HAV_IgM]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HAV_IgM]
 add data_lct datetime

 ----------------------------------------------------

 
 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CHAGAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CHAGAS] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CHAGAS]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CHAGAS]
 add data_lct datetime

 -------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[DENGUE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[DENGUE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[DENGUE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[DENGUE]
 add data_lct datetime

 --------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[HIV12](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[HIV12] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[HIV12]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[HIV12]
 add data_lct datetime

 ------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_HTLV_I_II](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_HTLV_I_II] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_HTLV_I_II]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_HTLV_I_II]
 add data_lct datetime

 ----------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_RUBEOLA_IGG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_RUBEOLA_IGG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_RUBEOLA_IGG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_RUBEOLA_IGG]
 add data_lct datetime

 -----------------------------------------------------

 
 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_RUBEOLA_IGM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_RUBEOLA_IGM] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_RUBEOLA_IGM]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_RUBEOLA_IGM]
 add data_lct datetime

 --------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_TOXOPLASMOSE_IGG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_TOXOPLASMOSE_IGG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_TOXOPLASMOSE_IGG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_TOXOPLASMOSE_IGG]
 add data_lct datetime

 --------------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_TOXOPLASMOSE_IGM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_TOXOPLASMOSE_IGM] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_TOXOPLASMOSE_IGM]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_TOXOPLASMOSE_IGM]
 add data_lct datetime

 ----------------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_CENTROMERO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_CENTROMERO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_CENTROMERO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_CENTROMERO]
 add data_lct datetime

 ---------------------------------------------------------

 
 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_ESCLERODERMA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_ESCLERODERMA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_ESCLERODERMA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_ESCLERODERMA]
 add data_lct datetime

 ----------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_ESTEPTOLISINA_O](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_ESTEPTOLISINA_O] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_ESTEPTOLISINA_O]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_ESTEPTOLISINA_O]
 add data_lct datetime

 ----------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_CCP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_CCP] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_CCP]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_CCP]
 add data_lct datetime

 --------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_MIELOPEROXIDASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_MIELOPEROXIDASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_MIELOPEROXIDASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_MIELOPEROXIDASE]
 add data_lct datetime

 ------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_PROTEINASE_3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_PROTEINASE_3] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_PROTEINASE_3]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_PROTEINASE_3]
 add data_lct datetime

 ----------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PESQUISA_ESPERMATOZOIDES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PESQUISA_ESPERMATOZOIDES] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PESQUISA_ESPERMATOZOIDES]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PESQUISA_ESPERMATOZOIDES]
 add data_lct datetime

 ----------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CITOMETRIA_GLOBAL_E_ESPECIFICA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CITOMETRIA_GLOBAL_E_ESPECIFICA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CITOMETRIA_GLOBAL_E_ESPECIFICA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CITOMETRIA_GLOBAL_E_ESPECIFICA]
 add data_lct datetime

 --------------------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[T3_LIVRE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[T3_LIVRE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[T3_LIVRE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[T3_LIVRE]
 add data_lct datetime

 --------------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_PEROXIDASES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_PEROXIDASES] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_PEROXIDASES]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_PEROXIDASES]
 add data_lct datetime

 -------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTI_TIREOGLOBULINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTI_TIREOGLOBULINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTI_TIREOGLOBULINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTI_TIREOGLOBULINA]
 add data_lct datetime

 --------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ESTRADIOL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ESTRADIOL] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ESTRADIOL]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ESTRADIOL]
 add data_lct datetime

 --------------------------------------------------------

 
   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[H_FOLICULO_ESTIMULANTE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[H_FOLICULO_ESTIMULANTE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[H_FOLICULO_ESTIMULANTE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[H_FOLICULO_ESTIMULANTE]
 add data_lct datetime

 -------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[H_LUTEINIZANTE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[H_LUTEINIZANTE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[H_LUTEINIZANTE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[H_LUTEINIZANTE]
 add data_lct datetime

 -----------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[H_LUTEINIZANTE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[H_LUTEINIZANTE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[H_LUTEINIZANTE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[H_LUTEINIZANTE]
 add data_lct datetime

 ----------------------------------------------------------------------

 
   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[17OHPROGESTERONA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[17OHPROGESTERONA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[17OHPROGESTERONA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[17OHPROGESTERONA]
 add data_lct datetime

 -----------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[SHBG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[SHBG] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[SHBG]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[SHBG]
 add data_lct datetime

 ---------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[S_DHEA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[S_DHEA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[S_DHEA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[S_DHEA]
 add data_lct datetime

 --------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PARATORMONIO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PARATORMONIO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PARATORMONIO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PARATORMONIO]
 add data_lct datetime

 -----------------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[INSULINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[INSULINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[INSULINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[INSULINA]
 add data_lct datetime

 ----------------------------------------------------------

 USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[INSULINA_120](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[INSULINA_120] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[INSULINA_120]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[INSULINA_120]
 add data_lct datetime

 --------------------------------------------------------------

  USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[C_TELOPEPTIDEO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[C_TELOPEPTIDEO] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[C_TELOPEPTIDEO]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[C_TELOPEPTIDEO]
 add data_lct datetime

 ---------------------------------------------------------------

   USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[VITAMINA_D](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[VITAMINA_D] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[VITAMINA_D]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[VITAMINA_D]
 add data_lct datetime

 --------------------------------------------------------------

    USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CORTISOL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CORTISOL] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CORTISOL]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CORTISOL]
 add data_lct datetime

 -------------------------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CORTISOL_APOS_DEXA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CORTISOL_APOS_DEXA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CORTISOL_APOS_DEXA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CORTISOL_APOS_DEXA]
 add data_lct datetime

 --------------------------------------------------------------------

 
     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ALFAFETOPROTEINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ALFAFETOPROTEINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ALFAFETOPROTEINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ALFAFETOPROTEINA]
 add data_lct datetime

 ------------------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CA_15_3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CA_15_3] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CA_15_3]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CA_15_3]
 add data_lct datetime

 ---------------------------------------------------

     USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[CA_19_9](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[CA_19_9] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[CA_19_9]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[CA_19_9]
 add data_lct datetime

 -------------------------------------------------------

      USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[ANTIGENO_CARCINOEMB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[ANTIGENO_CARCINOEMB] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[ANTIGENO_CARCINOEMB]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[ANTIGENO_CARCINOEMB]
 add data_lct datetime

 --------------------------------------------------------------------------------

       USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PSA_TOTAL_LIVRE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PSA_TOTAL_LIVRE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PSA_TOTAL_LIVRE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PSA_TOTAL_LIVRE]
 add data_lct datetime

 ----------------------------------------------------------------------

      USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[PSA_TOTAL_LIVRE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[PSA_TOTAL_LIVRE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[PSA_TOTAL_LIVRE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[PSA_TOTAL_LIVRE]
 add data_lct datetime

  ----------------------------------------------------------------------

      USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[DESIDROGENASE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[DESIDROGENASE] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[DESIDROGENASE]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[DESIDROGENASE]
 add data_lct datetime

  ----------------------------------------------------------------------

      USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[FATOR_ANTI_NUCLEAR](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[FATOR_ANTI_NUCLEAR] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[FATOR_ANTI_NUCLEAR]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[FATOR_ANTI_NUCLEAR]
 add data_lct datetime

   ----------------------------------------------------------------------

      USE [recepcao]
GO

/****** Object:  Table [exames].[anti_jo]    Script Date: 16/11/2015 15:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exames].[TIREOGLOBULINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codpac] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[resultado] [varchar](150) NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [exames].[TIREOGLOBULINA] ADD  DEFAULT (getdate()) FOR [data]
GO

use recepcao
ALTER TABLE [exames].[TIREOGLOBULINA]
ADD observacao varchar(1500),
id_usuario int;

use recepcao
alter table recepcao.[exames].[TIREOGLOBULINA]
 add data_lct datetime
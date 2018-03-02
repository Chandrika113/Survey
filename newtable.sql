USE [Feedback]
GO

/****** Object:  Table [dbo].[OptionGroup]    Script Date: 3/2/2018 7:42:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OptionGroup](
	[OptionGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OptionGroup] PRIMARY KEY CLUSTERED 
(
	[OptionGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Feedback]
GO

/****** Object:  Table [dbo].[Question]    Script Date: 3/2/2018 7:42:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionID] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_SurveySection] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SurveySection] ([SurveySectionID])
GO

ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_SurveySection]
GO


USE [Feedback]
GO

/****** Object:  Table [dbo].[QuestionChoiceRange]    Script Date: 3/2/2018 7:43:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[QuestionChoiceRange](
	[OptionChoiceID] [int] IDENTITY(1,1) NOT NULL,
	[OptionGroupID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[QuestionChoiceRange]  WITH CHECK ADD  CONSTRAINT [FK_OptionChoice_OptionGroup] FOREIGN KEY([OptionGroupID])
REFERENCES [dbo].[OptionGroup] ([OptionGroupID])
GO

ALTER TABLE [dbo].[QuestionChoiceRange] CHECK CONSTRAINT [FK_OptionChoice_OptionGroup]
GO


USE [Feedback]
GO

/****** Object:  Table [dbo].[QuestionOption]    Script Date: 3/2/2018 7:43:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[QuestionOption](
	[QuestionOptionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[OptionGroupID] [int] NOT NULL,
 CONSTRAINT [PK_QuestionOption] PRIMARY KEY CLUSTERED 
(
	[QuestionOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[QuestionOption]  WITH CHECK ADD  CONSTRAINT [FK_QuestionOption_OptionGroup] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO

ALTER TABLE [dbo].[QuestionOption] CHECK CONSTRAINT [FK_QuestionOption_OptionGroup]
GO

ALTER TABLE [dbo].[QuestionOption]  WITH CHECK ADD  CONSTRAINT [FK_QuestionOption_OptionGroup1] FOREIGN KEY([OptionGroupID])
REFERENCES [dbo].[OptionGroup] ([OptionGroupID])
GO

ALTER TABLE [dbo].[QuestionOption] CHECK CONSTRAINT [FK_QuestionOption_OptionGroup1]
GO


USE [Feedback]
GO

/****** Object:  Table [dbo].[Survey]    Script Date: 3/2/2018 7:43:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Survey](
	[SurveyID] [int] NOT NULL,
	[Answers] [sql_variant] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[TrainingID] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO

ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [FK_Survey_Question]
GO

USE [Feedback]
GO

/****** Object:  Table [dbo].[SurveySection]    Script Date: 3/2/2018 7:44:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SurveySection](
	[SurveySectionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SubHeading] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SurveySection] PRIMARY KEY CLUSTERED 
(
	[SurveySectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Feedback]
GO

/****** Object:  Table [dbo].[TrainingProgram]    Script Date: 3/2/2018 7:44:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TrainingProgram](
	[TrainingID] [int] IDENTITY(1,1) NOT NULL,
	[TrainingName] [varchar](50) NOT NULL,
	[Trainer] [varchar](50) NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Time] [timestamp] NOT NULL,
 CONSTRAINT [PK_TrainingProgram] PRIMARY KEY CLUSTERED 
(
	[TrainingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [Feedback]
GO

/****** Object:  Table [dbo].[UserTable]    Script Date: 3/2/2018 7:45:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserTable](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [master]
GO
/****** Object:  Database [Question]    Script Date: 9/30/2023 12:54:02 AM ******/
CREATE DATABASE [Question]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Question', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Question.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Question_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Question_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Question] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Question].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Question] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Question] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Question] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Question] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Question] SET ARITHABORT OFF 
GO
ALTER DATABASE [Question] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Question] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Question] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Question] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Question] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Question] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Question] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Question] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Question] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Question] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Question] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Question] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Question] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Question] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Question] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Question] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Question] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Question] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Question] SET  MULTI_USER 
GO
ALTER DATABASE [Question] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Question] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Question] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Question] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Question] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Question] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Question] SET QUERY_STORE = ON
GO
ALTER DATABASE [Question] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Question]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/30/2023 12:54:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[q_id] [int] IDENTITY(1,1) NOT NULL,
	[q_question] [nvarchar](max) NOT NULL,
	[q_questionA] [nvarchar](max) NOT NULL,
	[q_questionB] [nvarchar](max) NOT NULL,
	[q_questionC] [nvarchar](max) NOT NULL,
	[q_questionD] [nvarchar](max) NOT NULL,
	[Q_CORRECTOPTION] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (1, N'WWW Stands for___', N'world wide web', N'internet', N'world web wide', N'world wrestling web', N'world wide web')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (2, N'What is name of the largest desert of the world?', N'Sahara', N'Cambodia', N'Thai', N'Canada', N'Sahara')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (3, N'The highest waterfal of the world is:', N'Tugela', N'Angel', N'Cuquenan', N'Takkawa', N'Angel')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (4, N'Which is the deepest lake of the world?', N'Lake Baikal', N'Caspain Lake', N'Wular Lake', N'Lake Victoria', N'Lake Baikal')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (5, N'One nautical mile is equal to how many Kilometers?', N'1.642', N'1.752', N'1.852', N'1.855', N'1.852')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (6, N'Which Country is called "land of Mountains?', N'France', N'Nepal', N'Japan', N'Norway', N'Nepal')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (7, N'Which country is known as "Land of Rising Sun?', N'Japan', N'Korea', N'Canada', N'Russia', N'Japan')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (8, N'Which river flows behind the Taj Mahal?', N'Yamuna river', N'Namada river', N'Indus river', N'Beas river', N'Yamuna river')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (9, N'Who Translated Holy Quran in Persian?', N'Shelkh Abdul Qadr Jillani', N'Shah Wali Ulah', N'Hazrat Majdad Alf Sani', N'None of these', N'Shah Wali Ulah')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (10, N'In which Country is the volcano Mount Aso?', N'China', N'Taiwan', N'Japan', N'None of these', N'Japan')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (11, N'Veto power is not posssessed by?', N'U.K', N'U.S.A', N'Russia', N'West Gemany', N'West Gemany')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (12, N'Who is the father of Cprogramming?', N'Bill gates', N'Mark zukerberg', N'Steve jobs', N'Denise ritchie', N'Denise ritchie')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (13, N'who is the maker of apple?', N'Bill gates', N'Mark zukerberg', N'Steve jobs', N'Denise ritchie', N'Steve jobs')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (14, N'who is a flutter developer?', N'Google', N'Microsoft', N'BMW', N'None of these', N'Google')
INSERT [dbo].[Question] ([q_id], [q_question], [q_questionA], [q_questionB], [q_questionC], [q_questionD], [Q_CORRECTOPTION]) VALUES (15, N'who is developer of chatgpt', N'Google', N'OpenAi', N'Japan', N'Bile gates', N'OpenAi')
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
/****** Object:  StoredProcedure [dbo].[INSERT_QUESTION]    Script Date: 9/30/2023 12:54:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERT_QUESTION]
(
@q_question Nvarchar(max) ,
@q_questionA Nvarchar(max) ,
@q_questionB Nvarchar(max) ,
@q_questionC Nvarchar(max) ,
@q_questionD Nvarchar(max) ,
@Q_CORRECTOPTION Nvarchar(max)

)
AS 

BEGIN

INSERT INTO Question(q_question,q_questionA,q_questionB,q_questionC,q_questionD,Q_CORRECTOPTION)
VALUES(@q_question,@q_questionA,@q_questionB,@q_questionC,@q_questionD,@Q_CORRECTOPTION)

END
GO
USE [master]
GO
ALTER DATABASE [Question] SET  READ_WRITE 
GO

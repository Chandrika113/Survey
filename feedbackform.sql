USE [master]
GO

/****** Object:  Database [Feedback]    Script Date: 3/1/2018 2:25:02 PM ******/
CREATE DATABASE [Feedback]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Feedback', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Feedback.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Feedback_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Feedback_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Feedback] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Feedback].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Feedback] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Feedback] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Feedback] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Feedback] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Feedback] SET ARITHABORT OFF 
GO

ALTER DATABASE [Feedback] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Feedback] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Feedback] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Feedback] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Feedback] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Feedback] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Feedback] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Feedback] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Feedback] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Feedback] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Feedback] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Feedback] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Feedback] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Feedback] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Feedback] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Feedback] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Feedback] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Feedback] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Feedback] SET  MULTI_USER 
GO

ALTER DATABASE [Feedback] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Feedback] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Feedback] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Feedback] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Feedback] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Feedback] SET  READ_WRITE 
GO



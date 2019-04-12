USE [master]
GO

/****** Object:  Database [BancoDigital]    Script Date: 12/04/2019 19:14:49 ******/
CREATE DATABASE [BancoDigital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BancoDigital', FILENAME = N'D:\SQL\MSSQL14.SQLEXPRESS\MSSQL\DATA\BancoDigital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BancoDigital_log', FILENAME = N'D:\SQL\MSSQL14.SQLEXPRESS\MSSQL\DATA\BancoDigital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BancoDigital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BancoDigital] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BancoDigital] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BancoDigital] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BancoDigital] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BancoDigital] SET ARITHABORT OFF 
GO

ALTER DATABASE [BancoDigital] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BancoDigital] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BancoDigital] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BancoDigital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BancoDigital] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BancoDigital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BancoDigital] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BancoDigital] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BancoDigital] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BancoDigital] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BancoDigital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BancoDigital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BancoDigital] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BancoDigital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BancoDigital] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BancoDigital] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BancoDigital] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BancoDigital] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [BancoDigital] SET  MULTI_USER 
GO

ALTER DATABASE [BancoDigital] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BancoDigital] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BancoDigital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BancoDigital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BancoDigital] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BancoDigital] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BancoDigital] SET  READ_WRITE 
GO


USE [BancoDigital]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 12/04/2019 19:30:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[cpf] [varchar](14) NULL,
	[limiteEmprestimo] [money] NULL,
	[usu�rio] [varchar](15) NULL,
	[senha] [varchar](15) NULL,
	[ehAdm] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [DF_Clientes_ehAdm]  DEFAULT ((0)) FOR [ehAdm]
GO



USE [BancoDigital]
GO

/****** Object:  Table [dbo].[Emprestimo]    Script Date: 12/04/2019 19:31:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Emprestimo](
	[idEmprestimo] [int] IDENTITY(1,1) NOT NULL,
	[cliente] [int] NULL,
	[valor] [money] NULL,
	[dataEmprestimo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmprestimo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Emprestimo]  WITH CHECK ADD FOREIGN KEY([cliente])
REFERENCES [dbo].[Clientes] ([idcliente])
GO



use [BancoDigital]
go


insert into clientes values('088.242.142-31',1000,'teste','12345678',0)
go
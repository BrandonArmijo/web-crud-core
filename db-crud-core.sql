USE [master]
GO
/****** Object:  Database [DBCRUDCORE]    Script Date: 29/08/2024 17:34:29 ******/
CREATE DATABASE [DBCRUDCORE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBCRUDCORE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBCRUDCORE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBCRUDCORE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBCRUDCORE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBCRUDCORE] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBCRUDCORE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBCRUDCORE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBCRUDCORE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBCRUDCORE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBCRUDCORE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBCRUDCORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBCRUDCORE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBCRUDCORE] SET  MULTI_USER 
GO
ALTER DATABASE [DBCRUDCORE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBCRUDCORE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBCRUDCORE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBCRUDCORE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBCRUDCORE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBCRUDCORE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBCRUDCORE] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBCRUDCORE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBCRUDCORE]
GO
/****** Object:  Table [dbo].[CARGO]    Script Date: 29/08/2024 17:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGO](
	[IdCargo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 29/08/2024 17:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](60) NULL,
	[Correo] [varchar](60) NULL,
	[Telefono] [varchar](60) NULL,
	[IdCargo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CARGO] ON 

INSERT [dbo].[CARGO] ([IdCargo], [Descripcion]) VALUES (1, N'Asistente de ventas')
INSERT [dbo].[CARGO] ([IdCargo], [Descripcion]) VALUES (2, N'Diseñador de marketing')
INSERT [dbo].[CARGO] ([IdCargo], [Descripcion]) VALUES (3, N'Atención al cliente')
INSERT [dbo].[CARGO] ([IdCargo], [Descripcion]) VALUES (4, N'Desarrollador Web')
INSERT [dbo].[CARGO] ([IdCargo], [Descripcion]) VALUES (5, N'Coordinador')
SET IDENTITY_INSERT [dbo].[CARGO] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLEADO] ON 

INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (1, N'Jose Luis', N'jose@gmail.com', N'123123123', 3)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (2, N'Brandon Li', N'brandon@hotmail.com', N'123456789', 3)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (3, N'Luis', N'luis@gmail.com', N'111222333', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (4, N'Sandra', N'sandra@gmail.com', N'123890456', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (5, N'Andres', N'andres8@gmail.com', N'222333444', 3)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (6, N'Rosalia', N'rosalia2@gmail.com', N'000111000', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (7, N'Miguel', N'miguel@outlook.com', N'454545454', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (8, N'Dante', N'dantedmc@hotmail.it', N'555555555', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (9, N'Chuck', N'chucktaylor@outlook.es', N'987123123', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (10, N'Joao Felix', N'joaofelix@outlook.es', N'000222111', 5)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreCompleto], [Correo], [Telefono], [IdCargo]) VALUES (13, N'Skrillex', N'skrillex@owsla.com', N'123123123', 2)
SET IDENTITY_INSERT [dbo].[EMPLEADO] OFF
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_Cargo] FOREIGN KEY([IdCargo])
REFERENCES [dbo].[CARGO] ([IdCargo])
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_Cargo]
GO
USE [master]
GO
ALTER DATABASE [DBCRUDCORE] SET  READ_WRITE 
GO

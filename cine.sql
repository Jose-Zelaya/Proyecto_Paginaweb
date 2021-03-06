USE [master]
GO
/****** Object:  Database [Cine]    Script Date: 24/06/2020 02:39:25 p.m. ******/
CREATE DATABASE [Cine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Cine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Cine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cine] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cine] SET RECOVERY FULL 
GO
ALTER DATABASE [Cine] SET  MULTI_USER 
GO
ALTER DATABASE [Cine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cine] SET QUERY_STORE = OFF
GO
USE [Cine]
GO
/****** Object:  Table [dbo].[t_Actores]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Actores](
	[IdActor] [int] NOT NULL,
	[NombreActor] [varchar](50) NULL,
	[ApellidoActor] [varchar](50) NULL,
 CONSTRAINT [PK_t_Actores] PRIMARY KEY CLUSTERED 
(
	[IdActor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Administrador]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Administrador](
	[IdAdmin] [int] NOT NULL,
	[NombreAdmin] [varchar](20) NULL,
	[ApellidoAdmin] [varchar](20) NULL,
	[NumeroTelefono] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_t_Administrador] PRIMARY KEY CLUSTERED 
(
	[IdAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Cliente]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NombrePelicula] [varchar](50) NULL,
	[IdSala] [int] NULL,
	[NombreCliente] [varchar](50) NULL,
	[ApellidoCliente] [varchar](50) NULL,
	[FechaHora] [varchar](50) NULL,
	[Fila] [varchar](5) NULL,
	[Asiento] [int] NULL,
	[Precio] [numeric](10, 2) NULL,
 CONSTRAINT [PK_t_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Compañia]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Compañia](
	[IdCompañia] [int] NOT NULL,
	[NombreCompañia] [varchar](50) NULL,
 CONSTRAINT [PK_t_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Empleados]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Empleados](
	[IdEmpleado] [int] NOT NULL,
	[NombreEmpleado] [varchar](20) NULL,
	[ApellidoEmpleado] [varchar](20) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_t_Empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Genero]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Genero](
	[IdPelicula] [int] NOT NULL,
	[IdSala] [int] NULL,
	[NombreGenero] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_Genero] PRIMARY KEY CLUSTERED 
(
	[IdPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Pelicula]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Pelicula](
	[NombrePelicula] [varchar](50) NOT NULL,
	[IdActor] [int] NULL,
	[IdCompañia] [int] NULL,
	[NombreGenero] [varchar](50) NULL,
	[AñoLanzamiento] [int] NULL,
	[LongitudMinuto] [varchar](50) NULL,
	[FechaHora] [datetime] NULL,
 CONSTRAINT [PK_t_Pelicula] PRIMARY KEY CLUSTERED 
(
	[NombrePelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Sala]    Script Date: 24/06/2020 02:39:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Sala](
	[IdSala] [int] NOT NULL,
	[NombreSala] [varchar](50) NULL,
	[IdAdmin] [int] NULL,
	[IdEmpleado] [int] NULL,
	[Filas] [varchar](50) NULL,
	[Asientos] [int] NULL,
 CONSTRAINT [PK_t_Sala] PRIMARY KEY CLUSTERED 
(
	[IdSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[t_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_t_Cliente_t_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[t_Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[t_Cliente] CHECK CONSTRAINT [FK_t_Cliente_t_Cliente]
GO
ALTER TABLE [dbo].[t_Genero]  WITH CHECK ADD  CONSTRAINT [FK__t_Genero__IdSala__59FA5E80] FOREIGN KEY([IdSala])
REFERENCES [dbo].[t_Sala] ([IdSala])
GO
ALTER TABLE [dbo].[t_Genero] CHECK CONSTRAINT [FK__t_Genero__IdSala__59FA5E80]
GO
ALTER TABLE [dbo].[t_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK__t_Pelicul__IdAct__5812160E] FOREIGN KEY([IdActor])
REFERENCES [dbo].[t_Actores] ([IdActor])
GO
ALTER TABLE [dbo].[t_Pelicula] CHECK CONSTRAINT [FK__t_Pelicul__IdAct__5812160E]
GO
ALTER TABLE [dbo].[t_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_t_Pelicula_t_Pelicula] FOREIGN KEY([NombrePelicula])
REFERENCES [dbo].[t_Pelicula] ([NombrePelicula])
GO
ALTER TABLE [dbo].[t_Pelicula] CHECK CONSTRAINT [FK_t_Pelicula_t_Pelicula]
GO
ALTER TABLE [dbo].[t_Sala]  WITH CHECK ADD  CONSTRAINT [FK__t_Sala__IdAdmin__5CD6CB2B] FOREIGN KEY([IdAdmin])
REFERENCES [dbo].[t_Administrador] ([IdAdmin])
GO
ALTER TABLE [dbo].[t_Sala] CHECK CONSTRAINT [FK__t_Sala__IdAdmin__5CD6CB2B]
GO
ALTER TABLE [dbo].[t_Sala]  WITH CHECK ADD  CONSTRAINT [FK__t_Sala__IdEmplea__5BE2A6F2] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[t_Empleados] ([IdEmpleado])
GO
ALTER TABLE [dbo].[t_Sala] CHECK CONSTRAINT [FK__t_Sala__IdEmplea__5BE2A6F2]
GO
USE [master]
GO
ALTER DATABASE [Cine] SET  READ_WRITE 
GO

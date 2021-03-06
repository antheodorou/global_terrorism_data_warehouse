USE [master]
GO
/****** Object:  Database [terroristDB]    Script Date: 02/12/2020 9:39:29 μμ ******/
CREATE DATABASE [terroristDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'terroristDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\terroristDB.mdf' , SIZE = 270336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'terroristDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\terroristDB_log.ldf' , SIZE = 270336KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [terroristDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [terroristDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [terroristDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [terroristDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [terroristDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [terroristDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [terroristDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [terroristDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [terroristDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [terroristDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [terroristDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [terroristDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [terroristDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [terroristDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [terroristDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [terroristDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [terroristDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [terroristDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [terroristDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [terroristDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [terroristDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [terroristDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [terroristDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [terroristDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [terroristDB] SET RECOVERY FULL 
GO
ALTER DATABASE [terroristDB] SET  MULTI_USER 
GO
ALTER DATABASE [terroristDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [terroristDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [terroristDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [terroristDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [terroristDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [terroristDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'terroristDB', N'ON'
GO
ALTER DATABASE [terroristDB] SET QUERY_STORE = OFF
GO
USE [terroristDB]
GO
/****** Object:  Table [dbo].[Attack_Type]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attack_Type](
	[attacktype] [smallint] NOT NULL,
	[attacktype_txt] [varchar](35) NULL,
 CONSTRAINT [PK_Attack_Type] PRIMARY KEY CLUSTERED 
(
	[attacktype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[binary_labels]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[binary_labels](
	[id] [smallint] NOT NULL,
	[label] [varchar](7) NULL,
 CONSTRAINT [PK_binary_labels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City_ID]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_ID](
	[city_id] [int] NOT NULL,
	[city] [varchar](65) NULL,
 CONSTRAINT [PK_City_ID] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[country] [smallint] NOT NULL,
	[country_txt] [varchar](32) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[crit1_dimension]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crit1_dimension](
	[crit1_dim] [smallint] NOT NULL,
	[label] [varchar](49) NULL,
 CONSTRAINT [PK_crit1_dimension] PRIMARY KEY CLUSTERED 
(
	[crit1_dim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[crit2_dimension]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crit2_dimension](
	[crit2_id] [smallint] NOT NULL,
	[label] [varchar](69) NULL,
 CONSTRAINT [PK_crit2_dimension] PRIMARY KEY CLUSTERED 
(
	[crit2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[crit3_dimension]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crit3_dimension](
	[crit3_id] [smallint] NOT NULL,
	[label] [varchar](42) NULL,
 CONSTRAINT [PK_crit3_dimension] PRIMARY KEY CLUSTERED 
(
	[crit3_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criteria_dimension]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criteria_dimension](
	[crit_id] [smallint] NOT NULL,
	[crit1] [smallint] NULL,
	[crit2] [smallint] NULL,
	[crit3] [smallint] NULL,
 CONSTRAINT [PK_Criteria_dimension] PRIMARY KEY CLUSTERED 
(
	[crit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[id_date] [smallint] NOT NULL,
	[date] [varchar](9) NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[id_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kidnapping-Hostage_Outcome]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kidnapping-Hostage_Outcome](
	[hostkidoutcome] [smallint] NOT NULL,
	[hostkidoutcome_txt] [varchar](46) NULL,
 CONSTRAINT [PK_Kidnapping-Hostage_Outcome] PRIMARY KEY CLUSTERED 
(
	[hostkidoutcome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Main_Fact_Table]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Main_Fact_Table](
	[eventid] [int] NOT NULL,
	[date] [smallint] NULL,
	[extended] [smallint] NULL,
	[crit_id] [smallint] NULL,
	[country] [smallint] NULL,
	[region] [smallint] NULL,
	[prov_id] [smallint] NULL,
	[city_id] [int] NULL,
	[vicinity] [smallint] NULL,
	[latitude] [int] NULL,
	[longitude] [int] NULL,
	[attacktype1] [smallint] NULL,
	[attacktype2] [smallint] NULL,
	[attacktype3] [smallint] NULL,
	[success] [smallint] NULL,
	[suicide] [smallint] NULL,
	[weaptype1] [smallint] NULL,
	[weapsubtype1] [smallint] NULL,
	[weaptype2] [smallint] NULL,
	[weapsubtype2] [smallint] NULL,
	[weaptype3] [smallint] NULL,
	[weapsubtype3] [smallint] NULL,
	[weaptype4] [smallint] NULL,
	[weapsubtype4] [smallint] NULL,
	[targtype1] [smallint] NULL,
	[targsubtype1] [smallint] NULL,
	[targtype2] [smallint] NULL,
	[targsubtype2] [smallint] NULL,
	[targtype3] [smallint] NULL,
	[targsubtype3] [smallint] NULL,
	[perp_id] [smallint] NULL,
	[gsub_id] [smallint] NULL,
	[perp_id2] [smallint] NULL,
	[gsub_id2] [smallint] NULL,
	[perp_id3] [smallint] NULL,
	[gsub_id3] [smallint] NULL,
	[guncertain1] [smallint] NULL,
	[guncertain2] [smallint] NULL,
	[guncertain3] [smallint] NULL,
	[individual] [smallint] NULL,
	[nperps] [smallint] NULL,
	[nperpcap] [int] NULL,
	[nkill] [smallint] NULL,
	[nkillter] [smallint] NULL,
	[nwound] [smallint] NULL,
	[nwoundte] [smallint] NULL,
	[property] [smallint] NULL,
	[propextent] [smallint] NULL,
	[propvalue] [bigint] NULL,
	[ishostkid] [smallint] NULL,
	[nhostkid] [smallint] NULL,
	[nhours] [smallint] NULL,
	[ndays] [smallint] NULL,
	[ransom] [smallint] NULL,
	[ransomamt] [int] NULL,
	[ransompaid] [int] NULL,
	[hostkidoutcome] [smallint] NULL,
	[nreleased] [smallint] NULL,
	[summary] [varchar](2435) NULL,
 CONSTRAINT [PK_Main_Fact_Table] PRIMARY KEY CLUSTERED 
(
	[eventid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Month]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month](
	[id_month] [smallint] NOT NULL,
	[month] [varchar](11) NULL,
 CONSTRAINT [PK_Month] PRIMARY KEY CLUSTERED 
(
	[id_month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_name_id1]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_name_id1](
	[un_id] [smallint] NOT NULL,
	[gname] [varchar](112) NULL,
 CONSTRAINT [PK_Perp_name_id1] PRIMARY KEY CLUSTERED 
(
	[un_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_name_id2]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_name_id2](
	[un_id] [smallint] NOT NULL,
	[gname2] [varchar](100) NULL,
 CONSTRAINT [PK_Perp_name_id2] PRIMARY KEY CLUSTERED 
(
	[un_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_name_id3]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_name_id3](
	[un_id] [smallint] NOT NULL,
	[gname3] [varchar](55) NULL,
 CONSTRAINT [PK_Perp_name_id3] PRIMARY KEY CLUSTERED 
(
	[un_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_sub_id1]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_sub_id1](
	[gsub_id] [smallint] NOT NULL,
	[gsubname] [varchar](119) NULL,
 CONSTRAINT [PK_Perp_sub_id1] PRIMARY KEY CLUSTERED 
(
	[gsub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_sub_id2]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_sub_id2](
	[gsub_id2] [smallint] NOT NULL,
	[gsubname2] [varchar](58) NULL,
 CONSTRAINT [PK_Perp_sub_id2] PRIMARY KEY CLUSTERED 
(
	[gsub_id2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perp_sub_id3]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perp_sub_id3](
	[gsub_id3] [smallint] NOT NULL,
	[gsubname3] [varchar](47) NULL,
 CONSTRAINT [PK_Perp_sub_id3] PRIMARY KEY CLUSTERED 
(
	[gsub_id3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property_Damage]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property_Damage](
	[propextent] [smallint] NOT NULL,
	[propextent_txt] [varchar](45) NULL,
 CONSTRAINT [PK_Property_Damage] PRIMARY KEY CLUSTERED 
(
	[propextent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[region] [smallint] NOT NULL,
	[region_txt] [varchar](27) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State_ID]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_ID](
	[state_id] [smallint] NOT NULL,
	[state] [varchar](47) NULL,
 CONSTRAINT [PK_State_ID] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Target_SubType]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Target_SubType](
	[targsubtype] [smallint] NOT NULL,
	[targsubtype_txt] [varchar](71) NULL,
 CONSTRAINT [PK_Target_SubType] PRIMARY KEY CLUSTERED 
(
	[targsubtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Target_Type]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Target_Type](
	[targtype] [smallint] NOT NULL,
	[targtype_txt] [varchar](30) NULL,
 CONSTRAINT [PK_Target_Type] PRIMARY KEY CLUSTERED 
(
	[targtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[id] [smallint] NOT NULL,
	[year] [smallint] NULL,
	[month] [smallint] NULL,
	[date] [smallint] NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weapon_SubType]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weapon_SubType](
	[weapsubtype] [smallint] NOT NULL,
	[weapsubtype_txt] [varchar](41) NULL,
 CONSTRAINT [PK_Weapon_SubType] PRIMARY KEY CLUSTERED 
(
	[weapsubtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weapon_Type]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weapon_Type](
	[weaptype] [smallint] NOT NULL,
	[weaptype_txt] [varchar](75) NULL,
 CONSTRAINT [PK_Weapon_Type] PRIMARY KEY CLUSTERED 
(
	[weaptype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Year]    Script Date: 02/12/2020 9:39:30 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year](
	[id_year] [smallint] NOT NULL,
	[iyear] [varchar](6) NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[id_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [terroristDB] SET  READ_WRITE 
GO

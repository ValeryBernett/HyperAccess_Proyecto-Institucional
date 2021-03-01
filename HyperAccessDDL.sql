USE [HyperAccessDatabase]
GO
ALTER TABLE [dbo].[Vigilantes] DROP CONSTRAINT [FK_dbo.Vigilantes_dbo.PorteriasSede_PorteriasSedeID]
GO
ALTER TABLE [dbo].[Vigilantes] DROP CONSTRAINT [FK_dbo.Vigilantes_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Vigilantes] DROP CONSTRAINT [FK_dbo.Vigilantes_dbo.EmpresasVigilancia_EmpresaVigilanciaID]
GO
ALTER TABLE [dbo].[ServiciosEspeciales] DROP CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[ServiciosEspeciales] DROP CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.CargoServiciosEspeciales_CargoID]
GO
ALTER TABLE [dbo].[SedesColegio] DROP CONSTRAINT [FK_dbo.SedesColegio_dbo.Colegios_ColegioID]
GO
ALTER TABLE [dbo].[PorteriasSede] DROP CONSTRAINT [FK_dbo.PorteriasSede_dbo.SedesColegio_SedesColegioID_ColegioID]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_dbo.Personas_dbo.TiposSangre_TiposSangreID]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_dbo.Personas_dbo.RH_RHID]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_dbo.Personas_dbo.Generos_GeneroID]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_dbo.Personas_dbo.EPS_EPSID]
GO
ALTER TABLE [dbo].[PersonalAministrativo] DROP CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[PersonalAministrativo] DROP CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.CargoPersonalAministrativo_CargoID]
GO
ALTER TABLE [dbo].[Matriculas] DROP CONSTRAINT [FK_dbo.Matriculas_dbo.Jornadas_JornadaID]
GO
ALTER TABLE [dbo].[Matriculas] DROP CONSTRAINT [FK_dbo.Matriculas_dbo.Cursos_CursoID]
GO
ALTER TABLE [dbo].[Matriculas] DROP CONSTRAINT [FK_dbo.Matriculas_dbo.Colegios_ColegioID]
GO
ALTER TABLE [dbo].[Localidades] DROP CONSTRAINT [FK_dbo.Localidades_dbo.Ciudades_CiudadID]
GO
ALTER TABLE [dbo].[IngresoEgreso] DROP CONSTRAINT [FK_dbo.IngresoEgreso_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento] DROP CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.TiposDocumentos_TiposDocumentoID]
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento] DROP CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoTelefono] DROP CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.TiposTelefonos_TiposTelefonoID]
GO
ALTER TABLE [dbo].[HistoricoTelefono] DROP CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoEmpresasV] DROP CONSTRAINT [FK_dbo.HistoricoEmpresasV_dbo.EmpresasVigilancia_EmpresaVigilanciaID]
GO
ALTER TABLE [dbo].[HistoricoDireccion] DROP CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoDireccion] DROP CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Localidades_LocalidadID]
GO
ALTER TABLE [dbo].[Docentes] DROP CONSTRAINT [FK_dbo.Docentes_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Docentes] DROP CONSTRAINT [FK_dbo.Docentes_dbo.Jornadas_JornadaID]
GO
ALTER TABLE [dbo].[Departamentos] DROP CONSTRAINT [FK_dbo.Departamentos_dbo.Paises_PaisID]
GO
ALTER TABLE [dbo].[Cursos] DROP CONSTRAINT [FK_dbo.Cursos_dbo.Grados_GradoID]
GO
ALTER TABLE [dbo].[Colegios] DROP CONSTRAINT [FK_dbo.Colegios_dbo.TiposEducacion_TiposEducacionID]
GO
ALTER TABLE [dbo].[Colegios] DROP CONSTRAINT [FK_dbo.Colegios_dbo.TiposColegios_TiposColegioID]
GO
ALTER TABLE [dbo].[Colegios] DROP CONSTRAINT [FK_dbo.Colegios_dbo.Barrios_BarrioID]
GO
ALTER TABLE [dbo].[Clases] DROP CONSTRAINT [FK_dbo.Clases_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Clases] DROP CONSTRAINT [FK_dbo.Clases_dbo.Cursos_CursoID]
GO
ALTER TABLE [dbo].[Clases] DROP CONSTRAINT [FK_dbo.Clases_dbo.Asignaturas_AsignaturaID]
GO
ALTER TABLE [dbo].[Ciudades] DROP CONSTRAINT [FK_dbo.Ciudades_dbo.Departamentos_DepartamentoID]
GO
ALTER TABLE [dbo].[Barrios] DROP CONSTRAINT [FK_dbo.Barrios_dbo.Localidades_LocalidadID]
GO
ALTER TABLE [dbo].[Asignaturas] DROP CONSTRAINT [FK_dbo.Asignaturas_dbo.Areas_AreaID]
GO
ALTER TABLE [dbo].[Alumnos] DROP CONSTRAINT [FK_dbo.Alumnos_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Alumnos] DROP CONSTRAINT [FK_dbo.Alumnos_dbo.Matriculas_MatriculaID]
GO
ALTER TABLE [dbo].[Alumnos] DROP CONSTRAINT [FK_dbo.Alumnos_dbo.Acudientes_AcudienteID]
GO
ALTER TABLE [dbo].[Acudientes] DROP CONSTRAINT [FK_dbo.Acudientes_dbo.TiposDocumentos_TiposDocumentoID]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [DF__Personas__EPSID__4D5F7D71]
GO
ALTER TABLE [dbo].[Docentes] DROP CONSTRAINT [DF__Docentes__Jornad__51300E55]
GO
ALTER TABLE [dbo].[Clases] DROP CONSTRAINT [DF__Clases__CursoID__0697FACD]
GO
ALTER TABLE [dbo].[Alumnos] DROP CONSTRAINT [DF__Alumnos__Acudien__214BF109]
GO
/****** Object:  Table [dbo].[Vigilantes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vigilantes]') AND type in (N'U'))
DROP TABLE [dbo].[Vigilantes]
GO
/****** Object:  Table [dbo].[TiposTelefonos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposTelefonos]') AND type in (N'U'))
DROP TABLE [dbo].[TiposTelefonos]
GO
/****** Object:  Table [dbo].[TiposSangre]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposSangre]') AND type in (N'U'))
DROP TABLE [dbo].[TiposSangre]
GO
/****** Object:  Table [dbo].[TiposEducacion]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposEducacion]') AND type in (N'U'))
DROP TABLE [dbo].[TiposEducacion]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposDocumentos]') AND type in (N'U'))
DROP TABLE [dbo].[TiposDocumentos]
GO
/****** Object:  Table [dbo].[TiposColegios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposColegios]') AND type in (N'U'))
DROP TABLE [dbo].[TiposColegios]
GO
/****** Object:  Table [dbo].[ServiciosEspeciales]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiciosEspeciales]') AND type in (N'U'))
DROP TABLE [dbo].[ServiciosEspeciales]
GO
/****** Object:  Table [dbo].[SedesColegio]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SedesColegio]') AND type in (N'U'))
DROP TABLE [dbo].[SedesColegio]
GO
/****** Object:  Table [dbo].[RH]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RH]') AND type in (N'U'))
DROP TABLE [dbo].[RH]
GO
/****** Object:  Table [dbo].[PorteriasSede]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PorteriasSede]') AND type in (N'U'))
DROP TABLE [dbo].[PorteriasSede]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personas]') AND type in (N'U'))
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[PersonalAministrativo]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonalAministrativo]') AND type in (N'U'))
DROP TABLE [dbo].[PersonalAministrativo]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paises]') AND type in (N'U'))
DROP TABLE [dbo].[Paises]
GO
/****** Object:  Table [dbo].[Matriculas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Matriculas]') AND type in (N'U'))
DROP TABLE [dbo].[Matriculas]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Localidades]') AND type in (N'U'))
DROP TABLE [dbo].[Localidades]
GO
/****** Object:  Table [dbo].[Jornadas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jornadas]') AND type in (N'U'))
DROP TABLE [dbo].[Jornadas]
GO
/****** Object:  Table [dbo].[IngresoEgreso]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IngresoEgreso]') AND type in (N'U'))
DROP TABLE [dbo].[IngresoEgreso]
GO
/****** Object:  Table [dbo].[HistoricoTipoDocumento]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoTipoDocumento]') AND type in (N'U'))
DROP TABLE [dbo].[HistoricoTipoDocumento]
GO
/****** Object:  Table [dbo].[HistoricoTelefono]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoTelefono]') AND type in (N'U'))
DROP TABLE [dbo].[HistoricoTelefono]
GO
/****** Object:  Table [dbo].[HistoricoEmpresasV]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoEmpresasV]') AND type in (N'U'))
DROP TABLE [dbo].[HistoricoEmpresasV]
GO
/****** Object:  Table [dbo].[HistoricoDireccion]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoDireccion]') AND type in (N'U'))
DROP TABLE [dbo].[HistoricoDireccion]
GO
/****** Object:  Table [dbo].[Grados]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grados]') AND type in (N'U'))
DROP TABLE [dbo].[Grados]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Generos]') AND type in (N'U'))
DROP TABLE [dbo].[Generos]
GO
/****** Object:  Table [dbo].[EPS]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EPS]') AND type in (N'U'))
DROP TABLE [dbo].[EPS]
GO
/****** Object:  Table [dbo].[EmpresasVigilancia]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmpresasVigilancia]') AND type in (N'U'))
DROP TABLE [dbo].[EmpresasVigilancia]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Docentes]') AND type in (N'U'))
DROP TABLE [dbo].[Docentes]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamentos]') AND type in (N'U'))
DROP TABLE [dbo].[Departamentos]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cursos]') AND type in (N'U'))
DROP TABLE [dbo].[Cursos]
GO
/****** Object:  Table [dbo].[Colegios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colegios]') AND type in (N'U'))
DROP TABLE [dbo].[Colegios]
GO
/****** Object:  Table [dbo].[Clases]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clases]') AND type in (N'U'))
DROP TABLE [dbo].[Clases]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudades]') AND type in (N'U'))
DROP TABLE [dbo].[Ciudades]
GO
/****** Object:  Table [dbo].[CargoServiciosEspeciales]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CargoServiciosEspeciales]') AND type in (N'U'))
DROP TABLE [dbo].[CargoServiciosEspeciales]
GO
/****** Object:  Table [dbo].[CargoPersonalAministrativo]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CargoPersonalAministrativo]') AND type in (N'U'))
DROP TABLE [dbo].[CargoPersonalAministrativo]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Barrios]') AND type in (N'U'))
DROP TABLE [dbo].[Barrios]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asignaturas]') AND type in (N'U'))
DROP TABLE [dbo].[Asignaturas]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Areas]') AND type in (N'U'))
DROP TABLE [dbo].[Areas]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumnos]') AND type in (N'U'))
DROP TABLE [dbo].[Alumnos]
GO
/****** Object:  Table [dbo].[Acudientes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Acudientes]') AND type in (N'U'))
DROP TABLE [dbo].[Acudientes]
GO
/****** Object:  Table [dbo].[Acudientes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acudientes](
	[AcudienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](64) NOT NULL,
	[Apellidos] [nvarchar](64) NOT NULL,
	[Direccion] [nvarchar](128) NOT NULL,
	[NumeroTelefono] [nvarchar](12) NOT NULL,
	[NumeroDocumento] [nvarchar](12) NOT NULL,
	[Parentesco] [nvarchar](32) NOT NULL,
	[CorreoElectronico] [nvarchar](60) NULL,
	[TiposDocumentoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Acudientes] PRIMARY KEY CLUSTERED 
(
	[AcudienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[PersonaID] [int] NOT NULL,
	[MatriculaID] [int] NOT NULL,
	[AcudienteID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Alumnos] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[AreaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_dbo.Areas] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[AsignaturaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](40) NOT NULL,
	[AreaID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Asignaturas] PRIMARY KEY CLUSTERED 
(
	[AsignaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[BarrioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](128) NOT NULL,
	[LocalidadID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Barrios] PRIMARY KEY CLUSTERED 
(
	[BarrioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoPersonalAministrativo]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoPersonalAministrativo](
	[CargoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](25) NULL,
 CONSTRAINT [PK_dbo.CargoPersonalAministrativo] PRIMARY KEY CLUSTERED 
(
	[CargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoServiciosEspeciales]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoServiciosEspeciales](
	[CargoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](25) NULL,
 CONSTRAINT [PK_dbo.CargoServiciosEspeciales] PRIMARY KEY CLUSTERED 
(
	[CargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[CiudadID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](68) NOT NULL,
	[DepartamentoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Ciudades] PRIMARY KEY CLUSTERED 
(
	[CiudadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clases]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clases](
	[ClasesID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[AsignaturaID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Clases] PRIMARY KEY CLUSTERED 
(
	[ClasesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colegios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colegios](
	[ColegioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](128) NOT NULL,
	[Direccion] [nvarchar](128) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[NIT] [nvarchar](11) NULL,
	[Calendario] [nvarchar](2) NOT NULL,
	[BarrioID] [int] NOT NULL,
	[TiposColegioID] [int] NOT NULL,
	[TiposEducacionID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Colegios] PRIMARY KEY CLUSTERED 
(
	[ColegioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](20) NOT NULL,
	[GradoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Cursos] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[DepartamentoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](68) NOT NULL,
	[PaisID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Departamentos] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[PersonaID] [int] NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[JornadaID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Docentes] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresasVigilancia]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresasVigilancia](
	[EmpresaVigilanciaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
	[Direccion] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.EmpresasVigilancia] PRIMARY KEY CLUSTERED 
(
	[EmpresaVigilanciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EPS]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EPS](
	[EPSID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_dbo.EPS] PRIMARY KEY CLUSTERED 
(
	[EPSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[GeneroID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.Generos] PRIMARY KEY CLUSTERED 
(
	[GeneroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grados]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grados](
	[GradoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Grados] PRIMARY KEY CLUSTERED 
(
	[GradoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoDireccion]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoDireccion](
	[HistoricoDireccionID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[Direccion] [nvarchar](128) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Barrio] [nvarchar](30) NOT NULL,
	[LocalidadID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HistoricoDireccion] PRIMARY KEY CLUSTERED 
(
	[HistoricoDireccionID] ASC,
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoEmpresasV]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoEmpresasV](
	[FechaInicio] [smalldatetime] NOT NULL,
	[EmpresaVigilanciaID] [int] NOT NULL,
	[FechaFin] [date] NULL,
 CONSTRAINT [PK_dbo.HistoricoEmpresasV] PRIMARY KEY CLUSTERED 
(
	[FechaInicio] ASC,
	[EmpresaVigilanciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoTelefono]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoTelefono](
	[HistoricoTelefonoID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[NumeroTelefono] [nvarchar](12) NOT NULL,
	[Estado] [bit] NOT NULL,
	[TiposTelefonoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HistoricoTelefono] PRIMARY KEY CLUSTERED 
(
	[HistoricoTelefonoID] ASC,
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoTipoDocumento]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoTipoDocumento](
	[HistoricoTipoDocumentoID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[NumeroDocumento] [nvarchar](12) NOT NULL,
	[FechaExpedicion] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
	[TiposDocumentoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HistoricoTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[HistoricoTipoDocumentoID] ASC,
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngresoEgreso]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngresoEgreso](
	[IngresoEgresoID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[FechaEntrada] [nvarchar](25) NOT NULL,
	[FechaSalida] [nvarchar](25) NULL,
	[Novedad] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.IngresoEgreso] PRIMARY KEY CLUSTERED 
(
	[IngresoEgresoID] ASC,
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jornadas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jornadas](
	[JornadaID] [int] IDENTITY(1,1) NOT NULL,
	[TipoJornada] [nvarchar](10) NOT NULL,
	[Horario] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Jornadas] PRIMARY KEY CLUSTERED 
(
	[JornadaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[LocalidadID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](68) NOT NULL,
	[CiudadID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Localidades] PRIMARY KEY CLUSTERED 
(
	[LocalidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matriculas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matriculas](
	[MatriculaID] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[ColegioID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[JornadaID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Matriculas] PRIMARY KEY CLUSTERED 
(
	[MatriculaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[PaisID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](68) NOT NULL,
 CONSTRAINT [PK_dbo.Paises] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalAministrativo]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalAministrativo](
	[PersonaID] [int] NOT NULL,
	[Titulo] [nvarchar](64) NOT NULL,
	[CargoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PersonalAministrativo] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[PersonaID] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nvarchar](20) NOT NULL,
	[SegundoNombre] [nvarchar](20) NULL,
	[PrimerApellido] [nvarchar](20) NOT NULL,
	[SegundoApellido] [nvarchar](20) NULL,
	[CorreoElectronico] [nvarchar](60) NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[GeneroID] [int] NOT NULL,
	[TiposSangreID] [int] NOT NULL,
	[RHID] [int] NOT NULL,
	[EPSID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Personas] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PorteriasSede]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PorteriasSede](
	[PorteriasSedeID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](64) NOT NULL,
	[Estado] [bit] NOT NULL,
	[SedesColegioID] [int] NOT NULL,
	[ColegioID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PorteriasSede] PRIMARY KEY CLUSTERED 
(
	[PorteriasSedeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RH]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RH](
	[RHID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.RH] PRIMARY KEY CLUSTERED 
(
	[RHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SedesColegio]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SedesColegio](
	[SedesColegioID] [int] IDENTITY(1,1) NOT NULL,
	[ColegioID] [int] NOT NULL,
	[NombreSede] [nvarchar](128) NOT NULL,
	[Direccion] [nvarchar](128) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.SedesColegio] PRIMARY KEY CLUSTERED 
(
	[SedesColegioID] ASC,
	[ColegioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosEspeciales]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosEspeciales](
	[PersonaID] [int] NOT NULL,
	[CargoID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ServiciosEspeciales] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposColegios]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposColegios](
	[TiposColegioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_dbo.TiposColegios] PRIMARY KEY CLUSTERED 
(
	[TiposColegioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[TiposDocumentoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_dbo.TiposDocumentos] PRIMARY KEY CLUSTERED 
(
	[TiposDocumentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEducacion]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEducacion](
	[TiposEducacionID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_dbo.TiposEducacion] PRIMARY KEY CLUSTERED 
(
	[TiposEducacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposSangre]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposSangre](
	[TiposSangreID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_dbo.TiposSangre] PRIMARY KEY CLUSTERED 
(
	[TiposSangreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposTelefonos]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposTelefonos](
	[TiposTelefonoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.TiposTelefonos] PRIMARY KEY CLUSTERED 
(
	[TiposTelefonoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vigilantes]    Script Date: 1/03/2021 12:08:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vigilantes](
	[PersonaID] [int] NOT NULL,
	[EmpresaVigilanciaID] [int] NOT NULL,
	[PorteriasSedeID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Vigilantes] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumnos] ADD  DEFAULT ((0)) FOR [AcudienteID]
GO
ALTER TABLE [dbo].[Clases] ADD  DEFAULT ((0)) FOR [CursoID]
GO
ALTER TABLE [dbo].[Docentes] ADD  DEFAULT ((0)) FOR [JornadaID]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT ((0)) FOR [EPSID]
GO
ALTER TABLE [dbo].[Acudientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Acudientes_dbo.TiposDocumentos_TiposDocumentoID] FOREIGN KEY([TiposDocumentoID])
REFERENCES [dbo].[TiposDocumentos] ([TiposDocumentoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Acudientes] CHECK CONSTRAINT [FK_dbo.Acudientes_dbo.TiposDocumentos_TiposDocumentoID]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Alumnos_dbo.Acudientes_AcudienteID] FOREIGN KEY([AcudienteID])
REFERENCES [dbo].[Acudientes] ([AcudienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_dbo.Alumnos_dbo.Acudientes_AcudienteID]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Alumnos_dbo.Matriculas_MatriculaID] FOREIGN KEY([MatriculaID])
REFERENCES [dbo].[Matriculas] ([MatriculaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_dbo.Alumnos_dbo.Matriculas_MatriculaID]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Alumnos_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_dbo.Alumnos_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Asignaturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Asignaturas_dbo.Areas_AreaID] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Areas] ([AreaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignaturas] CHECK CONSTRAINT [FK_dbo.Asignaturas_dbo.Areas_AreaID]
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Barrios_dbo.Localidades_LocalidadID] FOREIGN KEY([LocalidadID])
REFERENCES [dbo].[Localidades] ([LocalidadID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FK_dbo.Barrios_dbo.Localidades_LocalidadID]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ciudades_dbo.Departamentos_DepartamentoID] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamentos] ([DepartamentoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_dbo.Ciudades_dbo.Departamentos_DepartamentoID]
GO
ALTER TABLE [dbo].[Clases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clases_dbo.Asignaturas_AsignaturaID] FOREIGN KEY([AsignaturaID])
REFERENCES [dbo].[Asignaturas] ([AsignaturaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clases] CHECK CONSTRAINT [FK_dbo.Clases_dbo.Asignaturas_AsignaturaID]
GO
ALTER TABLE [dbo].[Clases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clases_dbo.Cursos_CursoID] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clases] CHECK CONSTRAINT [FK_dbo.Clases_dbo.Cursos_CursoID]
GO
ALTER TABLE [dbo].[Clases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clases_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clases] CHECK CONSTRAINT [FK_dbo.Clases_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Colegios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Colegios_dbo.Barrios_BarrioID] FOREIGN KEY([BarrioID])
REFERENCES [dbo].[Barrios] ([BarrioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Colegios] CHECK CONSTRAINT [FK_dbo.Colegios_dbo.Barrios_BarrioID]
GO
ALTER TABLE [dbo].[Colegios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Colegios_dbo.TiposColegios_TiposColegioID] FOREIGN KEY([TiposColegioID])
REFERENCES [dbo].[TiposColegios] ([TiposColegioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Colegios] CHECK CONSTRAINT [FK_dbo.Colegios_dbo.TiposColegios_TiposColegioID]
GO
ALTER TABLE [dbo].[Colegios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Colegios_dbo.TiposEducacion_TiposEducacionID] FOREIGN KEY([TiposEducacionID])
REFERENCES [dbo].[TiposEducacion] ([TiposEducacionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Colegios] CHECK CONSTRAINT [FK_dbo.Colegios_dbo.TiposEducacion_TiposEducacionID]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cursos_dbo.Grados_GradoID] FOREIGN KEY([GradoID])
REFERENCES [dbo].[Grados] ([GradoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_dbo.Cursos_dbo.Grados_GradoID]
GO
ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Departamentos_dbo.Paises_PaisID] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FK_dbo.Departamentos_dbo.Paises_PaisID]
GO
ALTER TABLE [dbo].[Docentes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Docentes_dbo.Jornadas_JornadaID] FOREIGN KEY([JornadaID])
REFERENCES [dbo].[Jornadas] ([JornadaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docentes] CHECK CONSTRAINT [FK_dbo.Docentes_dbo.Jornadas_JornadaID]
GO
ALTER TABLE [dbo].[Docentes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Docentes_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[Docentes] CHECK CONSTRAINT [FK_dbo.Docentes_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoDireccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Localidades_LocalidadID] FOREIGN KEY([LocalidadID])
REFERENCES [dbo].[Localidades] ([LocalidadID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoDireccion] CHECK CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Localidades_LocalidadID]
GO
ALTER TABLE [dbo].[HistoricoDireccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoDireccion] CHECK CONSTRAINT [FK_dbo.HistoricoDireccion_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoEmpresasV]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoEmpresasV_dbo.EmpresasVigilancia_EmpresaVigilanciaID] FOREIGN KEY([EmpresaVigilanciaID])
REFERENCES [dbo].[EmpresasVigilancia] ([EmpresaVigilanciaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoEmpresasV] CHECK CONSTRAINT [FK_dbo.HistoricoEmpresasV_dbo.EmpresasVigilancia_EmpresaVigilanciaID]
GO
ALTER TABLE [dbo].[HistoricoTelefono]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoTelefono] CHECK CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoTelefono]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.TiposTelefonos_TiposTelefonoID] FOREIGN KEY([TiposTelefonoID])
REFERENCES [dbo].[TiposTelefonos] ([TiposTelefonoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoTelefono] CHECK CONSTRAINT [FK_dbo.HistoricoTelefono_dbo.TiposTelefonos_TiposTelefonoID]
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento] CHECK CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.TiposDocumentos_TiposDocumentoID] FOREIGN KEY([TiposDocumentoID])
REFERENCES [dbo].[TiposDocumentos] ([TiposDocumentoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoricoTipoDocumento] CHECK CONSTRAINT [FK_dbo.HistoricoTipoDocumento_dbo.TiposDocumentos_TiposDocumentoID]
GO
ALTER TABLE [dbo].[IngresoEgreso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IngresoEgreso_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IngresoEgreso] CHECK CONSTRAINT [FK_dbo.IngresoEgreso_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Localidades_dbo.Ciudades_CiudadID] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_dbo.Localidades_dbo.Ciudades_CiudadID]
GO
ALTER TABLE [dbo].[Matriculas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matriculas_dbo.Colegios_ColegioID] FOREIGN KEY([ColegioID])
REFERENCES [dbo].[Colegios] ([ColegioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matriculas] CHECK CONSTRAINT [FK_dbo.Matriculas_dbo.Colegios_ColegioID]
GO
ALTER TABLE [dbo].[Matriculas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matriculas_dbo.Cursos_CursoID] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matriculas] CHECK CONSTRAINT [FK_dbo.Matriculas_dbo.Cursos_CursoID]
GO
ALTER TABLE [dbo].[Matriculas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matriculas_dbo.Jornadas_JornadaID] FOREIGN KEY([JornadaID])
REFERENCES [dbo].[Jornadas] ([JornadaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matriculas] CHECK CONSTRAINT [FK_dbo.Matriculas_dbo.Jornadas_JornadaID]
GO
ALTER TABLE [dbo].[PersonalAministrativo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.CargoPersonalAministrativo_CargoID] FOREIGN KEY([CargoID])
REFERENCES [dbo].[CargoPersonalAministrativo] ([CargoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonalAministrativo] CHECK CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.CargoPersonalAministrativo_CargoID]
GO
ALTER TABLE [dbo].[PersonalAministrativo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[PersonalAministrativo] CHECK CONSTRAINT [FK_dbo.PersonalAministrativo_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personas_dbo.EPS_EPSID] FOREIGN KEY([EPSID])
REFERENCES [dbo].[EPS] ([EPSID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_dbo.Personas_dbo.EPS_EPSID]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personas_dbo.Generos_GeneroID] FOREIGN KEY([GeneroID])
REFERENCES [dbo].[Generos] ([GeneroID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_dbo.Personas_dbo.Generos_GeneroID]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personas_dbo.RH_RHID] FOREIGN KEY([RHID])
REFERENCES [dbo].[RH] ([RHID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_dbo.Personas_dbo.RH_RHID]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personas_dbo.TiposSangre_TiposSangreID] FOREIGN KEY([TiposSangreID])
REFERENCES [dbo].[TiposSangre] ([TiposSangreID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_dbo.Personas_dbo.TiposSangre_TiposSangreID]
GO
ALTER TABLE [dbo].[PorteriasSede]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PorteriasSede_dbo.SedesColegio_SedesColegioID_ColegioID] FOREIGN KEY([SedesColegioID], [ColegioID])
REFERENCES [dbo].[SedesColegio] ([SedesColegioID], [ColegioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PorteriasSede] CHECK CONSTRAINT [FK_dbo.PorteriasSede_dbo.SedesColegio_SedesColegioID_ColegioID]
GO
ALTER TABLE [dbo].[SedesColegio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SedesColegio_dbo.Colegios_ColegioID] FOREIGN KEY([ColegioID])
REFERENCES [dbo].[Colegios] ([ColegioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SedesColegio] CHECK CONSTRAINT [FK_dbo.SedesColegio_dbo.Colegios_ColegioID]
GO
ALTER TABLE [dbo].[ServiciosEspeciales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.CargoServiciosEspeciales_CargoID] FOREIGN KEY([CargoID])
REFERENCES [dbo].[CargoServiciosEspeciales] ([CargoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiciosEspeciales] CHECK CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.CargoServiciosEspeciales_CargoID]
GO
ALTER TABLE [dbo].[ServiciosEspeciales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[ServiciosEspeciales] CHECK CONSTRAINT [FK_dbo.ServiciosEspeciales_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Vigilantes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vigilantes_dbo.EmpresasVigilancia_EmpresaVigilanciaID] FOREIGN KEY([EmpresaVigilanciaID])
REFERENCES [dbo].[EmpresasVigilancia] ([EmpresaVigilanciaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vigilantes] CHECK CONSTRAINT [FK_dbo.Vigilantes_dbo.EmpresasVigilancia_EmpresaVigilanciaID]
GO
ALTER TABLE [dbo].[Vigilantes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vigilantes_dbo.Personas_PersonaID] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[Vigilantes] CHECK CONSTRAINT [FK_dbo.Vigilantes_dbo.Personas_PersonaID]
GO
ALTER TABLE [dbo].[Vigilantes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vigilantes_dbo.PorteriasSede_PorteriasSedeID] FOREIGN KEY([PorteriasSedeID])
REFERENCES [dbo].[PorteriasSede] ([PorteriasSedeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vigilantes] CHECK CONSTRAINT [FK_dbo.Vigilantes_dbo.PorteriasSede_PorteriasSedeID]
GO

USE [ExamenIPrograIII]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 8/18/2018 7:39:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[codPerfil] [int] NOT NULL,
	[nombrePerfil] [nvarchar](50) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[codPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroPersonal]    Script Date: 8/18/2018 7:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroPersonal](
	[codEntrada] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpleado] [nvarchar](50) NOT NULL,
	[identificacion] [int] NOT NULL,
	[posicion] [nvarchar](50) NOT NULL,
	[area] [nvarchar](50) NOT NULL,
	[fechaEntrada] [nvarchar](50) NULL,
	[horaEntrada] [nvarchar](50) NULL,
	[fechaSalida] [nvarchar](50) NULL,
	[horaSalida] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegistroPersonal_1] PRIMARY KEY CLUSTERED 
(
	[codEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/18/2018 7:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[nombreUsuario] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosxPerfiles]    Script Date: 8/18/2018 7:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosxPerfiles](
	[nombreUsuario] [nvarchar](50) NOT NULL,
	[codPerfil] [int] NOT NULL,
 CONSTRAINT [PK_UsuariosxPerfiles] PRIMARY KEY CLUSTERED 
(
	[nombreUsuario] ASC,
	[codPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Perfiles] ([codPerfil], [nombrePerfil], [activo]) VALUES (1, N'administracion', 1)
INSERT [dbo].[Perfiles] ([codPerfil], [nombrePerfil], [activo]) VALUES (2, N'proveduria', 1)
INSERT [dbo].[Perfiles] ([codPerfil], [nombrePerfil], [activo]) VALUES (3, N'mantenimiento', 1)
SET IDENTITY_INSERT [dbo].[RegistroPersonal] ON 

INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (14, N'Marcela Lopez', 789456563, N'rrhh', N'rrhh', N'', N'', N'', N'')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (15, N'Luis Flores', 741258966, N'rrhh', N'rrhh', N'', N'', N'', N'')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (16, N'Marco Obando', 963221155, N'rrhh', N'rrhh', N'', N'', N'', N'')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (29, N'Marcela Lopez', 789456563, N'rrhh', N'rrhh', N'03/07/2018', N'09:56', N'03/07/2018', N'10:20')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (30, N'Luis Flores', 741258966, N'rrhh', N'rrhh', N'03/07/2018', N'09:56', N'03/07/2018', N'09:57')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (31, N'Marco Obando', 963221155, N'rrhh', N'rrhh', N'03/07/2018', N'09:56', N'03/07/2018', N'10:19')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (32, N'Julio Madriz', 452155422, N'Administracion', N'Administracion', N'', N'', N'', N'')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (33, N'Julio Madriz', 452155422, N'Administracion', N'Administracion', N'03/07/2018', N'10:14', N'03/07/2018', N'10:17')
INSERT [dbo].[RegistroPersonal] ([codEntrada], [nombreEmpleado], [identificacion], [posicion], [area], [fechaEntrada], [horaEntrada], [fechaSalida], [horaSalida]) VALUES (34, N'Julio Madriz', 452155422, N'Administracion', N'Administracion', N'03/07/2018', N'10:15', N'03/07/2018', N'10:19')
SET IDENTITY_INSERT [dbo].[RegistroPersonal] OFF
INSERT [dbo].[Usuarios] ([nombreUsuario], [pass], [activo]) VALUES (N'goku', N'1234', 1)
INSERT [dbo].[Usuarios] ([nombreUsuario], [pass], [activo]) VALUES (N'judas', N'1234', 1)
INSERT [dbo].[Usuarios] ([nombreUsuario], [pass], [activo]) VALUES (N'martha', N'1234', 1)
INSERT [dbo].[Usuarios] ([nombreUsuario], [pass], [activo]) VALUES (N'sofi', N'1234', 1)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'goku', 3)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'judas', 1)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'judas', 2)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'judas', 3)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'martha', 2)
INSERT [dbo].[UsuariosxPerfiles] ([nombreUsuario], [codPerfil]) VALUES (N'sofi', 1)
ALTER TABLE [dbo].[UsuariosxPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosxPerfiles_Perfiles] FOREIGN KEY([codPerfil])
REFERENCES [dbo].[Perfiles] ([codPerfil])
GO
ALTER TABLE [dbo].[UsuariosxPerfiles] CHECK CONSTRAINT [FK_UsuariosxPerfiles_Perfiles]
GO
ALTER TABLE [dbo].[UsuariosxPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosxPerfiles_Usuarios] FOREIGN KEY([nombreUsuario])
REFERENCES [dbo].[Usuarios] ([nombreUsuario])
GO
ALTER TABLE [dbo].[UsuariosxPerfiles] CHECK CONSTRAINT [FK_UsuariosxPerfiles_Usuarios]
GO

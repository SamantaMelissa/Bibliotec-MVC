USE [Bibliotec]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[CategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Periodo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Livro]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livro](
	[LivroID] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](100) NULL,
	[Escritor] [varchar](100) NULL,
	[Editora] [varchar](100) NULL,
	[Descricao] [text] NULL,
	[Idioma] [varchar](100) NULL,
	[Imagem] [varchar](100) NULL,
	[Reservado] [bit] NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LivroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LivroCategoria]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivroCategoria](
	[LivroCategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[LivroID] [int] NULL,
	[CategoriaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LivroCategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LivroFavorito]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivroFavorito](
	[LivroFavoritoID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[LivroID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LivroFavoritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LivroReserva]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivroReserva](
	[LivroReservaID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[LivroID] [int] NULL,
	[DtReserva] [date] NULL,
	[DtDevolucao] [date] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LivroReservaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19/11/2024 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[DtNascimento] [date] NULL,
	[Email] [varchar](100) NULL,
	[Senha] [varchar](20) NULL,
	[Contato] [char](14) NULL,
	[Admin] [bit] NULL,
	[Status] [bit] NULL,
	[CursoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (1, N'Romance')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (2, N'Suspense')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (3, N'Drama')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (4, N'TI')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (5, N'Científico')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (6, N'Ficção')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (7, N'Ação')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (8, N'Aventura')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (9, N'Culinária')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (10, N'Motivacional')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (11, N'Fantasia')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (12, N'HQ')
INSERT [dbo].[Categoria] ([CategoriaID], [Nome]) VALUES (13, N'Infanto-Juvenil')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (1, N'Multimidia', N'M')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (2, N'Multimidia', N'T')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (3, N'Multimidia', N'I')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (4, N'Desenvolvimento de sistemas', N'M')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (5, N'Desenvolvimento de sistemas', N'T')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (6, N'Desenvolvimento de sistemas', N'I')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (7, N'Jogos Digitais', N'T')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (8, N'Redes', N'T')
INSERT [dbo].[Curso] ([CursoID], [Nome], [Periodo]) VALUES (9, N'Redes', N'M')
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[Livro] ON 

INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (1, N'Mindset: A nova psicologia do sucesso', N'Carol S. DweckCarol S. Dweck', N'Objetiva', N'Carol S. Dweck, ph.D., professora de psicologia na Universidade Stanford e especialista internacional em sucesso e motivação, desenvolveu, ao longo de décadas de pesquisa, um conceito fundamental: a atitude mental com que encaramos a vida, que ela chama de “mindset”, é crucial para o sucesso. Dweck revela de forma brilhante como o sucesso pode ser alcançado pela maneira como lidamos com nossos objetivos. O mindset não é um mero traço de personalidade, é a explicação de por que somos otimistas ou pessimistas, bem-sucedidos ou não. Ele define nossa relação com o trabalho e com as pessoas e a maneira como educamos nossos filhos. É um fator decisivo para que todo o nosso potencial seja explorado.', N'Português', N'foto01.png', 1, 1)
INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (2, N'O poder da ação', N'Paulo Vieira', N'Gente', N'Acorde para os objetivos que quer conquistar. Já aconteceu a você de se olhar no espelho e não gostar daqueles quilos a mais? De observar seu momento profissional somente com frustração? De se sentir desconectado dos seus familiares, dos seus amigos? Se você acha que essas são situações normais, pense de novo! Só porque isso acontece com várias pessoas não quer dizer que a vida deva ser assim. Só porque algo se torna comum, não significa que seja normal! Neste livro, Paulo Vieira lhe convida a quebrar o ciclo vicioso e iniciar um caminho de realização. Para isso, ele apresenta o método responsável por impactar 250 mil pessoas ao longo de sua carreira - e que pode ser a chave para o que você tanto procura. No decorrer destas páginas, o autor lhe entrega uma bússola. E para conseguir se guiar por ela você terá de assumir um compromisso com a mudança. Preparado? Aproveite todas as provocações e os desafios propostos nesta obra para conseguir, de fato, fazer o check-up completo sobre si mesmo. Acorde, creia, comunique, tenha foco, AJA! Pare de adiar sua vida e seja quem quer ser a partir de agora. Não existe outra opção. E está em suas mãos reescrever seu futuro.', N'Português', N'foto02.png', 1, 1)
INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (3, N'O vento sabe meu nome', N'Isabel Allende', N'Bertrand Brasil', N'Viena, 1938. Samuel Adler tem cinco anos quando seu pai desaparece durante a Noite dos Cristais - a noite em que sua família perde tudo. À medida que a segurança de seu filho se torna cada vez mais difícil de garantir, a mãe de Samuel consegue uma vaga para ele no trem Kindertransport, da Áustria nazista para a Inglaterra. Sozinho, o menino embarca levando apenas seu violino e o peso da solidão e da incerteza, que o acompanharão ao longo de sua vida.', N'Português', N'foto03.png', 1, 1)
INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (4, N'Lá vem o Ratinho Carteiro! ', N'Marianne Dubuc', N'Melhoramentos', N'Você já foi à casa de um crocodilo, ou à casa de um esquilo? Seguindo o ratinho carteiro, enquanto ele entrega suas encomendas, você vai descobrir os lugares divertidos onde esses animais moram. Como você vai ver, há mil coisas interessantes para se observar nessas casas muito bem decoradas!', N'Português', N'foto04.png', 1, 1)
INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (5, N'A hora da estrela', N'Clarice Lispector', N'Rocco', N'Pouco antes de morrer, em 1977, Clarice Lispector decide se afastar da inflexão intimista que caracteriza sua escrita para desafiar a realidade. O resultado desse salto na extroversão é A hora da estrela, o livro mais surpreendente que escreveu. Se desde Perto do coração selvagem, seu romance de estreia, Clarice estava de corpo inteiro, todo o tempo, no centro de seus relatos, agora a cena é ocupada por personagens que em nada se parecem com ela.
A nordestina Macabéa, a protagonista de A hora da estrela, é uma mulher miserável, que mal tem consciência de existir. Depois de perder seu único elo com o mundo, uma velha tia, ela viaja para o Rio, onde aluga um quarto, se emprega como datilógrafa e gasta suas horas ouvindo a Rádio Relógio. Apaixona-se, então, por Olímpico de Jesus, um metalúrgico nordestino, que logo a trai com uma colega de trabalho. Desesperada, Macabéa consulta uma cartomante, que lhe prevê um futuro luminoso, bem diferente do que a espera.', N'Português', N'foto05.png', 1, 1)
INSERT [dbo].[Livro] ([LivroID], [NOME], [Escritor], [Editora], [Descricao], [Idioma], [Imagem], [Reservado], [Ativo]) VALUES (6, N'Verity', N'Priscila CatãoPriscila Catão', N'Bertrand Brasil', N'Verity Crawford é a autora best-seller por trás de uma série de sucesso. Ela está no auge de sua carreira, aclamada pela crítica e pelo público, no entanto, um súbito e terrível acidente acaba interrompendo suas atividades, deixando-a sem condições de concluir a história... E é nessa complexa circunstância que surge Lowen Ashleigh, uma escritora à beira da falência convidada a escrever, sob um pseudônimo, os três livros restantes da já consolidada série.', N'Português', N'foto06.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Livro] OFF
GO
SET IDENTITY_INSERT [dbo].[LivroCategoria] ON 

INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (1, 1, 10)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (2, 2, 10)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (3, 3, 1)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (4, 3, 1)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (5, 4, 13)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (6, 4, 8)
INSERT [dbo].[LivroCategoria] ([LivroCategoriaID], [LivroID], [CategoriaID]) VALUES (7, 6, 1)
SET IDENTITY_INSERT [dbo].[LivroCategoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioID], [Nome], [DtNascimento], [Email], [Senha], [Contato], [Admin], [Status], [CursoID]) VALUES (1, N'Beatriz Tuane', CAST(N'1984-02-19' AS Date), N'beatriz@admin.com.br', N'123', N'(11)96485-8522', 1, 1, NULL)
INSERT [dbo].[Usuario] ([UsuarioID], [Nome], [DtNascimento], [Email], [Senha], [Contato], [Admin], [Status], [CursoID]) VALUES (2, N'Hiorhanna Couto', CAST(N'2007-07-16' AS Date), N'hiorhanna@aluno.com.br', N'123', N'(11)9006-8522 ', 0, 1, 6)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[LivroCategoria]  WITH CHECK ADD FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([CategoriaID])
GO
ALTER TABLE [dbo].[LivroCategoria]  WITH CHECK ADD FOREIGN KEY([LivroID])
REFERENCES [dbo].[Livro] ([LivroID])
GO
ALTER TABLE [dbo].[LivroFavorito]  WITH CHECK ADD FOREIGN KEY([LivroID])
REFERENCES [dbo].[Livro] ([LivroID])
GO
ALTER TABLE [dbo].[LivroFavorito]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[LivroReserva]  WITH CHECK ADD FOREIGN KEY([LivroID])
REFERENCES [dbo].[Livro] ([LivroID])
GO
ALTER TABLE [dbo].[LivroReserva]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO

-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- Implementação do Esquema Global
-- MySQL 8.1.0 (MySQL Community Server) (Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- 2023, Outubro/Novembro
-- **

-- **Criação da Base de Dados**
CREATE DATABASE Eventos;
-- Instrução para apagar a Base de Dados
-- DROP DATABASE Eventos;
-- ****


-- Instrução para assinalar qual a base de dados em que pretendemos trabalhar 
USE Eventos;


-- **Criação das tabelas da base de dados**
-- Em cada ponto de criação de tabela vamos ter as seguintes instruções anexadas:
-- DROP TABLE nome_tabela - para apagar a tabela
-- DESC nome_tabela - para obter informações sobre a tabela
-- ****

-- Criação da tabela "Evento"
-- DROP TABLE Evento
-- DESC Evento
CREATE TABLE Evento(
	IdEvento INTEGER NOT NULL,
    Nome VARCHAR (70) NOT NULL,
    Descrição TEXT,
    DataInicio DATETIME NOT NULL,
    DataFim DATETIME NOT NULL,
    CodPostal VARCHAR(50) NOT NULL,
    DescriçãoLocal VARCHAR(80) NOT NULL,
    Rua VARCHAR(70) NOT NULL,
    Pago BOOLEAN NOT NULL,
    ValorTotal INTEGER,
    QuantidadeBilhetesVendidos INTEGER,
	CustoEvento DECIMAL(8,2) NOT NULL,
    Preço DECIMAL(8,2),
		PRIMARY KEY(IdEvento)
	
)
ENGINE = InnoDB;

-- Criação da tabela "Atividade"
-- DROP TABLE Atividade
-- DESC Atividade
CREATE TABLE Atividade(
	IdAtividade INTEGER  NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    Descrição TEXT,
    Pago BOOLEAN NOT NULL,
    CodPostal VARCHAR(50) NOT NULL,
    Rua VARCHAR(70) NOT NULL,
    DescriçãoLocal VARCHAR(80) NOT NULL,
    Data DATETIME NOT NULL,
    Lotação INTEGER,
    IdEvento INTEGER NOT NULL,
    IdArtista INTEGER,
	ValorTotal INTEGER,
    QuantidadeBilhetesVendidos INTEGER,
    BilhetesDisponiveis INTEGER,
    Preço DECIMAL(8,2),
    CustoAtividade DECIMAL(8,2) NOT NULL,
		PRIMARY KEY(IdAtividade),
		FOREIGN KEY(IdArtista)
			REFERENCES Artista(IdArtista),
		FOREIGN KEY(IdEvento)
			REFERENCES Evento(IdEvento)
)
ENGINE = InnoDB;

-- Criação da tabela "Artista"
-- DROP TABLE Artista
-- DESC Artista
CREATE TABLE Artista(
	IdArtista INTEGER  NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    Descrição TEXT,
    IdAgente INTEGER NOT NULL,
    CustoArtista DECIMAL(8,2) NOT NULL,
		PRIMARY KEY(IdArtista),
        FOREIGN KEY(IdAgente)
			REFERENCES Agente(IdAgente)
)
ENGINE = InnoDB;

-- Criação da tabela "Agente"
-- DROP TABLE Agente
-- DESC Agente
CREATE TABLE Agente(
	IdAgente INTEGER  NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    TelefoneAgente VARCHAR(20) NOT NULL,
    EmailAgente VARCHAR(70) NOT NULL,
		PRIMARY KEY(IdAgente)
) 
ENGINE = InnoDB;


-- Criação da tabela "Staff"
-- DROP TABLE Staff
-- DESC Staff
CREATE TABLE Staff(
	IdStaff INTEGER  NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    Função VARCHAR(70) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
		PRIMARY KEY(IdStaff)
)
ENGINE = InnoDB;

-- Criação da tabela "Bilhete"
-- DROP TABLE Bilhete
-- DESC Bilhete
CREATE TABLE Bilhete(
	NumBilhete INTEGER  NOT NULL,
    Preço DECIMAL(8,2) NOT NULL,
	IdEvento INTEGER,
    IdAtividade INTEGER,
		PRIMARY KEY(NumBilhete),
        FOREIGN KEY(IdEvento)
			REFERENCES Evento(IdEvento),
		FOREIGN KEY(IdAtividade)
			REFERENCES Atividade(IdAtividade)
)
ENGINE = InnoDB;

		


-- Criação da tabela "StaffEventos"
-- DROP TABLE StaffEventos
-- DESC StaffEventos
CREATE TABLE StaffEvento(
	Staff INTEGER NOT NULL,
    Evento INTEGER NOT NULL,
    FOREIGN KEY(Staff)
			REFERENCES Staff(IdStaff),
	FOREIGN KEY(Evento)
			REFERENCES Evento(IdEvento)
)
ENGINE = InnoDB;


-- Criação da tabela "BilhetesVendidos"
-- DROP TABLE BilhetesVendidos
-- DESC BilhetesVendidos
CREATE TABLE BilhetesVendidos (
    IdBilheteVendido INTEGER NOT NULL AUTO_INCREMENT,
    IdEvento INTEGER,
    IdAtividade INTEGER,
    Quantidade INTEGER NOT NULL,
    DataVenda DATETIME NOT NULL,
    PreçoVenda DECIMAL(8,2) NOT NULL,
    IdBilhete INTEGER,
    PRIMARY KEY (IdBilheteVendido),
    FOREIGN KEY (IdEvento) 
			REFERENCES Evento(IdEvento),
    FOREIGN KEY (IdAtividade) 
			REFERENCES Atividade(IdAtividade),
	FOREIGN KEY (IdBilhete)
			REFERENCES Bilhete(NumBilhete)
)
ENGINE = InnoDB;

-- FIM














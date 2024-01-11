-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- MySQL 8.1.0 (MySQL Community Server) ->Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- SELECT VERSION()
-- Grupo 4 - Diogo Coelho da Silva (A100092) - Pedro Miguel Oliveira Ramôa (A97686) 2023, 2024.
-- **


-- **   V I E W S   **   
-- Definições de views, para serem utilizadas pelos utilizadores comuns da base de dados. Fornecem detalhes necessários para a consulta de eventos e atividades.
-- DROP VIEW viewAtividade
-- Utilizamos o recurso de junções externas, de modo a incluir todas as entradas independentemente de haver correspondencia noutras tabelas. Por exemplo, atividades sem artistas, etç...
CREATE VIEW viewAtividade AS
    SELECT 
        A.Nome AS Nome,
        A.Descrição AS Descrição,
        A.Pago AS éPaga,
        CONCAT(A.Rua, ',', A.CodPostal, ',', A.DescriçãoLocal) AS Morada,
        A.Data AS Data,
        A.Lotação AS LotaçãoMáxima,
        AR.Nome AS NomeArtista,
        E.Nome AS NomeEvento,
        B.Preço AS PreçoAtividade
    FROM Atividade AS A
    LEFT JOIN Artista AS AR 
		ON A.IdArtista = AR.IdArtista
    LEFT JOIN Evento AS E 
		ON A.IdEvento = E.IdEvento
    LEFT JOIN Bilhete AS B 
		ON A.IdAtividade = B.IdAtividade;

SELECT * FROM viewAtividade;
SELECT * FROM Atividade;

-- DROP VIEW viewEvento
CREATE VIEW viewEvento AS
    SELECT 
        E.Nome AS Nome,
        E.Descrição AS Descrição,
        E.Pago AS éPaga,
        CONCAT(E.Rua, ',', E.CodPostal, ',', E.DescriçãoLocal) AS Morada,
        E.DataInicio AS Data
    FROM Evento AS E;
        
        
SELECT * FROM viewEvento;
SELECT * FROM Evento;



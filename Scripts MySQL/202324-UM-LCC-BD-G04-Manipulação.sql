-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- MySQL 8.1.0 (MySQL Community Server) ->Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- SELECT VERSION()
-- Grupo 4 - Diogo Coelho da Silva (A100092) - Pedro Miguel Oliveira Ramôa (A97686) 2023, 2024.
-- **

-- **   Q U E R I E S   **  

-- USE Eventos

-- QUERIE a)
-- Contabilizar o número de eventos que foram realizados num dado ano. 
-- Usamos um sp para a QUERIE funcionar para qualquer ano
DELIMITER $$
CREATE PROCEDURE spContaEventosAno(
	IN Ano INT
)
BEGIN
	SELECT COUNT(*) AS NumEventosRealizados
	FROM Evento
	WHERE YEAR(DATAINICIO) = Ano;
END $$

CALL spContaEventosAno(2024);

-- QUERIE b)
-- Obter o número de bilhetes vendidos por evento, ordenados por quantidade de bilhetes vendidos.

SELECT IdEvento, SUM(Quantidade) AS TotalBilhetesVendidos
	FROM BilhetesVendidos
	GROUP BY (IdEvento)
	ORDER BY (TotalBilhetesVendidos) DESC;

-- QUERIE c)
-- Calcular o total obtido por evento, ordenado pelo valor total em ordem crescente.

SELECT IdEvento, ValorTotal FROM Evento
	ORDER BY(ValorTotal) DESC;


-- QUERIE d)
-- Selecionar os agentes que agenciam 2 ou mais artistas e quem agenciam.

SELECT A.Nome AS NomeAgente, AR.Nome AS NomeArtista
	FROM Agente AS A
	INNER JOIN Artista AS AR
		ON A.IdAgente = AR.IdAgente
	WHERE A.IdAgente IN (
		SELECT A.IdAgente
		FROM Agente AS A
		INNER JOIN Artista AS AR
			ON A.IdAgente = AR.IdAgente
		GROUP BY A.IdAgente
		HAVING COUNT(AR.IdAgente) > 2
)

-- QUERIE e)
-- e)Fazer um relatório diário da receita gerada por cada evento. (por ano)
-- Para realizar esta interrogação temos que criar uma tabela auxiliar "RelatorioDiario"

CREATE TABLE RelatorioDiario(
	IdRelatorio INTEGER AUTO_INCREMENT,
    Data DATETIME,
    NumeroEvento INTEGER NOT NULL,
    BilhetesVendidos INTEGER,
    QuantidadeBilhetes INTEGER,
    ValorFaturado DECIMAL (8,2),
    PRIMARY KEY (IdRelatorio),
    FOREIGN KEY (NumeroEvento)
		REFERENCES Evento(IdEvento)
)ENGINE = InnoDB;

-- Criação do Scheduler para atualizar esta tabela diariamente com o relatório diário

DELIMITER $$
CREATE EVENT RelatorioDiario
	ON SCHEDULE 
		EVERY 1 DAY
        STARTS CURRENT_DATE + INTERVAL 1 DAY
	DO 
    BEGIN
		DECLARE dataVenda DATE;
        SET dataVenda = CURDATE();
        
        INSERT INTO RelatorioDiario(IdRelatorio,Data,IdEvento,BilhetesVendidos,QuantidadeBilhetes,ValorFaturado)
        SELECT
			NULL,
            dataVenda,
            IdEvento,
            COUNT(IdBilheteVendido) AS BilhetesVendidos,
            SUM(Quantidade) AS QuantidadeBilhetes,
            SUM(Quantidade * PreçoVenda) AS ValorFaturado
		FROM BilhetesVendidos
        WHERE DATE(DataVenda) = dataVenda
        GROUP BY IdEvento;
        
END;
$$
            
SELECT * FROM RelatorioDiario;

-- QUERIE f)
-- Listar todos os eventos grátis

SELECT IdEvento, Nome FROM Evento
	WHERE Pago = false


-- g) Selecionar os evenstos grátis que tenham atividades pagas, dizendo quais são as atividades pagas e os respetivos valores

SELECT E.IdEvento, E.Nome AS Evento, A.Nome AS Atividade, B.Preço AS Preco
	FROM Evento AS E
    INNER JOIN Atividade AS A
		ON E.IdEvento = A.IdEvento	
        INNER JOIN Bilhete AS B
        ON A.IdAtividade = B.IdAtividade
	WHERE A.Pago = true AND E.Pago = false
    
    

    
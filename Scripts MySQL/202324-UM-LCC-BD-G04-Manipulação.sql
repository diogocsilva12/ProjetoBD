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


-- QUERIE b)
-- Obter o número de bilhetes vendidos por evento, ordenados por quantidade de bilhetes vendidos.

SELECT IdEvento, SUM(Quantidade) AS TotalBilhetesVendidos
	FROM BilhetesVendidos
	GROUP BY (IdEvento)
	ORDER BY (TotalBilhetesVendidos) DESC;

-- QUERIE c)
-- Calcular o total obtido por evento, ordenado pelo valor total em ordem crescente.


-- QUERIE d)
-- Ver o número único de elementos do staff que ajudou em todos os eventos.


-- QUERIE e)
-- Selecionar os agentes que agenciam mais do que 3 artistas e quem agenciam.


-- QUERIE f)
-- Fazer um relatório anual da receita gerada por ano. (Vamos utilizar o ano de 2023 para exemplificar)

-- QUERIE g)
-- Mostrar o artista mais caro.

-- QUERIE h)
-- Listar todos os eventos grátis


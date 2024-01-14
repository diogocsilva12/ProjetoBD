-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- Implementação do Esquema Global
-- MySQL 8.1.0 (MySQL Community Server) (Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- 2024, Janeiro
-- **
-- Instrução para listar todos os gatilhos criados
-- SHOW TRIGGERS

-- Criação do gatilho trAtualizaCustoEvento
-- Instrução para apagar trigger
-- DROP TRIGGER trAtualizaCustoEvento
DELIMITER $$
CREATE TRIGGER trAtualizaCustoEvento
	AFTER INSERT ON Atividade
    FOR EACH ROW
BEGIN 
		UPDATE Evento
		SET CustoEvento = CustoEvento + NEW.CustoEvento
        WHERE IdEvento = NEW.IdEvento;
END $$

-- Criação do gatilho trAsseguraDatas
-- Instrução para apagar trigger
-- DROP TRIGGER trAsseguraDatas
DELIMITER $$ 
CREATE TRIGGER trAsseguraDatas
	BEFORE INSERT ON Evento
    FOR EACH ROW
    BEGIN
		IF NEW.DataInicio > NEW.DataFim THEN 
			SIGNAL SQLSTATE '45000' -- MENSAGEM DE ERRO PREDIFINIDA EM SQL
            SET MESSAGE_TEXT = "Data Inválida";
		END IF;
	END$$

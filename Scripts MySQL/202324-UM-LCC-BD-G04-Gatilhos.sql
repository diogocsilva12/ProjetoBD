
DELIMITER $$
CREATE TRIGGER trAtualizaCustoEvento
	AFTER INSERT ON Atividade
    FOR EACH ROW
BEGIN 
		UPDATE Evento
		SET CustoEvento = CustoEvento + NEW.CustoEvento
        WHERE IdEvento = NEW.IdEvento;
END $$


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

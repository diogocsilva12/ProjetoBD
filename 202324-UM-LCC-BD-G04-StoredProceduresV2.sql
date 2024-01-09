-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- MySQL 8.1.0 (MySQL Community Server) ->Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- SELECT VERSION()
-- 2023, Outubro/Novembro
-- **


-- **    S T O R E D   P R O C E D U R E S    **   
-- Implementação da transação de venda de bilhetes para um evento
-- Criação de uma stored procedure para adicionar bilhetes vendidos para um Evento (todas as suas atividades), assim como a atualização de informações sobre o mesmo.
-- Nesta stored procedure, os bilhetes também vão ser adicionados 1 a 1 a uma tabela bilhetes vendidos, de forma a ter uma segunda via para o controlo dos mesmos.
-- DROP PROCEDURE AtualizarInfoBilhetesVendidosEventos
DELIMITER $$
CREATE PROCEDURE AtualizarInfoBilhetesVendidosEventos(
    IN QuantidadeBilhetes INTEGER,   -- Argumento de entrada relativa à quantidade de bilhetes a comprar.
    IN Evento_Id INTEGER,			 -- Argumento de entrada que diz qual o evento que queremos comprar o bilhete.
    OUT Resultado VARCHAR(150)		 -- Argumento de saída com informações relativas ao controlo de operações durante esta transação.
)
AtualizarBilhetesEvento:BEGIN
	-- Declaração de variáveis locais
    DECLARE idx INT DEFAULT 0;          -- Varíavel de iteração para o ciclo While.
    DECLARE PreçoBilhete DECIMAL(8,2);  -- Varíavel que guarda o preço do bilhete relativo ao evento selecionado.
    DECLARE EventoPago BOOLEAN;         -- Varíavel que guarda a informação que permite saber se um evento é pago ou não
    
    -- Declaração de variáveis de controlo e de um handler para deteção da ocorrência de exceções SQL
    DECLARE vErro INT DEFAULT 0;       
    DECLARE CONTINUE HANDLER 
		FOR SQLEXCEPTION
			SET vErro = 1;
	-- Inicio da transação da venda
    START TRANSACTION;
    -- Guarda na variável EventoPago a informação que diz se um evento é ou não pago
    SELECT Pago INTO EventoPago
    FROM Evento
    WHERE IdEvento = Evento_Id;

	-- Condição que testa se o evento é pago (=1) ou não (=0) 
    IF EventoPago = 0 THEN  -- **(Quando EventoPago = 0)**Neste caso atualizamos resultado com uma mensagem de saída e fazemos rollback de todas as operações feitas até ao momento
        SET Resultado = 'Este evento é gratuito. Não é possível adicionar bilhetes.';
        ROLLBACK;
    ELSE
    -- **(Quando EventoPago = 1)**Neste caso é guardado o preço na variável PreçoBilhete, preço este que é retirado a partir da tabela "Bilhete"
        SELECT Preço INTO PreçoBilhete
        FROM Bilhete
        WHERE IdEvento = Evento_Id
        LIMIT 1;
		-- Atualização da tabela "Evento" já com as informação dos bilhetes que foram vendidos
        UPDATE Evento
        SET ValorTotal = IFNULL(ValorTotal, 0) + (PreçoBilhete * QuantidadeBilhetes),
            QuantidadeBilhetesVendidos = IFNULL(QuantidadeBilhetesVendidos, 0) + QuantidadeBilhetes,
            Preço = PreçoBilhete
        WHERE IdEvento = Evento_Id;
        -- Atualização da tabela "Atividade" já com as informação dos bilhetes que foram vendidos
        UPDATE Atividade
        SET ValorTotal = IFNULL(ValorTotal, 0) + (PreçoBilhete * QuantidadeBilhetes),
            QuantidadeBilhetesVendidos = IFNULL(QuantidadeBilhetesVendidos, 0) + QuantidadeBilhetes,
            Preço = PreçoBilhete,
            BilhetesDisponiveis = Lotação - QuantidadeBilhetesVendidos
        WHERE IdEvento = Evento_Id;
		-- Ciclo que a cada iteração insere na tabela "BilhetesVendidos" informações relativas a cada bilhete
        -- Enquanto que o iterador for menor do que a quantidade de bilhetes pretendida, é adicionado a tabela um bilhete de cada vez.
        WHILE idx < QuantidadeBilhetes DO
            INSERT INTO BilhetesVendidos (IdEvento,Quantidade,DataVenda,PreçoVenda)
            VALUES (Evento_Id,1,NOW(),PreçoBilhete);
            SET idx = idx + 1;
        END WHILE;
        
        -- Interrupção da transação da venda 
        IF vErro = 1 THEN
            SET Resultado = 'Transação abortada. Ocorreu um erro durante as operações.';
            ROLLBACK;
            LEAVE AtualizarBilhetesEvento;
        ELSE
            COMMIT; -- Confirmação da transação
            SET Resultado = 'Transação concluída com sucesso!';
        END IF;
    END IF;
END$$

-- ############################################################################################

-- Implementação da transação de venda de bilhetes para um evento
-- Criação de uma stored procedure para adicionar bilhetes vendidos para um Evento (todas as suas atividades), assim como a atualização de informações sobre o mesmo.
-- Nesta stored procedure, os bilhetes também vão ser adicionados 1 a 1 a uma tabela bilhetes vendidos, de forma a ter uma segunda via para o controlo dos mesmos.
-- DROP PROCEDURE AtualizarInfoBilhetesVendidosEventos
-- Este procedimento é para comprar bilhetes para atividades num evento
DELIMITER $$

CREATE PROCEDURE AtualizarInfoBilhetesVendidosAtividades(
    IN QuantidadeBilhetes INTEGER,
    IN Atividade_Id INTEGER,
    OUT Resultado VARCHAR(150)
)
AtualizarBilhetesAtividades:BEGIN 
    DECLARE idx INT DEFAULT 0;
    DECLARE PreçoBilhete DECIMAL(8,2);
    DECLARE AtividadePaga BOOLEAN;
    DECLARE Evento_Id INT; -- Declare uma variável para armazenar o IdEvento

    -- Declaração de variável de controle de erro
    DECLARE vErro INT DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET vErro = 1;

    -- Obtenha o IdEvento relacionado à IdAtividade
    SELECT IdEvento INTO Evento_Id
    FROM Atividade
    WHERE IdAtividade = Atividade_Id;

    -- Verifica se a atividade é paga ou gratuita
    SELECT Pago INTO AtividadePaga
    FROM Atividade
    WHERE IdAtividade = Atividade_Id;

    -- Se a atividade for gratuita, exibe uma mensagem de erro e sai do procedimento
    IF AtividadePaga = 0 THEN
        SET Resultado = 'Esta atividade é gratuita. Não é possível adicionar bilhetes.';
    ELSE
        -- Obtém o preço do bilhete para a atividade
        SELECT Preço INTO PreçoBilhete
        FROM Bilhete
        WHERE IdAtividade = Atividade_Id
        LIMIT 1;
        
        -- Atualiza os atributos do evento com base nos bilhetes vendidos
        UPDATE Evento
        SET ValorTotal = IFNULL(ValorTotal, 0) + (PreçoBilhete * QuantidadeBilhetes),
            QuantidadeBilhetesVendidos = IFNULL(QuantidadeBilhetesVendidos, 0) + QuantidadeBilhetes,
            Preço = PreçoBilhete
        WHERE IdEvento = Evento_Id;
        
        -- Atualiza os atributos da atividade com base nos bilhetes vendidos
        UPDATE Atividade
        SET ValorTotal = IFNULL(ValorTotal, 0) + (PreçoBilhete * QuantidadeBilhetes),
            QuantidadeBilhetesVendidos = IFNULL(QuantidadeBilhetesVendidos, 0) + QuantidadeBilhetes,
            Preço = PreçoBilhete,
            BilhetesDisponiveis = Lotação - QuantidadeBilhetesVendidos
        WHERE IdAtividade = Atividade_Id;
        
        -- ADICIONA BILHETES UM A UM À TABELA BILHETESVENDIDOS
        WHILE idx < QuantidadeBilhetes DO
            INSERT INTO BilhetesVendidos (IdEvento,IdAtividade,Quantidade,DataVenda,PreçoVenda)
            VALUES (Evento_Id, Atividade_Id, 1, NOW(), PreçoBilhete);
            SET idx = idx + 1;
        END WHILE;
        
        IF vErro = 1 THEN
            SET Resultado = 'Transação abortada. Ocorreu um erro durante as operações.';
        ELSE
            SET Resultado = 'Transação concluída com sucesso!';
        END IF;
    END IF;
END$$


-- ############################################################################################

DELIMITER $$
-- REINICIA A CONTAGEM DA QUANTIDADE E DO VALOR TOTAL
CREATE PROCEDURE ResetValoresEventos(
    IN Evento_Id INTEGER
)
BEGIN
    UPDATE Evento
    SET ValorTotal = 0,
        QuantidadeBilhetesVendidos = 0,
        Preço = 0
    WHERE IdEvento = Evento_Id;
END$$

-- ############################################################################################

DELIMITER $$
-- REINICIA A CONTAGEM DA QUANTIDADE E DO VALOR TOTAL
CREATE PROCEDURE ResetValoresAtividades(
    IN Atividade_Id INTEGER
)
BEGIN
	SET SQL_SAFE_UPDATES = 0;
    UPDATE Atividade
    SET ValorTotal = 0,
        QuantidadeBilhetesVendidos = 0,
        Preço = 0,
        BilhetesDisponiveis = Lotação
    WHERE IdAtividade = IdAtividade;
	SET SQL_SAFE_UPDATES = 1;
END$$

-- ############################################################################################


DELIMITER $$

CREATE PROCEDURE ResetAll(
    IN LastEvento INTEGER,
    IN LastAtividade INTEGER
)
BEGIN
	DECLARE idx INT DEFAULT 1;
    SET SQL_SAFE_UPDATES = 0;
    -- Reseta os valores dos eventos de 1 a LastEvento
    WHILE idx <= LastEvento DO
        CALL ResetValoresEventos(idx);
        SET idx = idx + 1;
    END WHILE;
    
    SET idx = 1; -- Reinicializa o contador
    
    -- Reseta os valores das atividades de 1 a LastAtividade
    WHILE idx <= LastAtividade DO
        CALL ResetValoresAtividades(idx);
        SET idx = idx + 1;
    END WHILE;

    -- Remove todas as entradas da tabela BilhetesVendidos
    DELETE FROM BilhetesVendidos WHERE IdBilheteVendido > 0;
    ALTER TABLE BilhetesVendidos AUTO_INCREMENT = 1;
    SET SQL_SAFE_UPDATES = 1;
END$$

-- ############################################################################################
-- E X E M P L O S
-- USE EVENTOS;
-- Exemplo da venda de bilhetes para um evento concluida com sucesso.
-- Venda de 5 bilhetes para o Evento 1.
CALL AtualizarInfoBilhetesVendidosEventos(5, 1, @Resultado);
SELECT @Resultado;

-- QUERIES para a validação da transação anterior
SELECT * FROM Evento
	WHERE IdEvento = 1;
SELECT * FROM Atividade
	WHERE IdEvento = 1;
    
    
-- Exemplo 
-- ############################################################################################

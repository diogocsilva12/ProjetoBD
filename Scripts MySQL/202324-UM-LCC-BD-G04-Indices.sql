-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- MySQL 8.1.0 (MySQL Community Server) ->Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- SELECT VERSION()
-- Grupo 4 - Diogo Coelho da Silva (A100092) - Pedro Miguel Oliveira Ramôa (A97686) 2023, 2024.
-- 2024, Janeiro
-- **

-- **   Í N D I C E S   **   


-- CRIAÇÃO DE INDICES
CREATE INDEX DataVenda ON BilhetesVendidos (DataVenda);
-- Instrução para apagar índice criado
-- DROP INDEX DataVenda ON BilhetesVendidos  -> apaga o indice DataVenda da tabela BilhetesVendidos


CREATE INDEX NomeEvento ON Evento(Nome);
CREATE INDEX DataInicioEvento ON Evento(DataInicio);
-- DROP INDEX NomeEvento ON Evento
-- DROP INDEX DataInicioEvento ON Evento

CREATE INDEX NomeAtividade ON Atividade(Nome);
CREATE INDEX DataInicioAtividade ON Atividade(Data);
-- DROP INDEX NomeAtividade ON Atividade
-- DROP INDEX DataInicioAtividade ON Atividade


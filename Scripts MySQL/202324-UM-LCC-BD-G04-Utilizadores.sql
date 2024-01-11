-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- MySQL 8.1.0 (MySQL Community Server) ->Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- SELECT VERSION()
-- Grupo 4 - Diogo Coelho da Silva (A100092) - Pedro Miguel Oliveira Ramôa (A97686) 2023, 2024.
-- **

-- **   U T I L I Z A D O R E S   **
--
-- Consulta dos utilizadores criados no sistema.
SELECT * 
	FROM mysql.user;
    
    
-- Criação de um utilizador da base de dados para o administrador
CREATE USER 'admin'@'localhost';
SET PASSWORD FOR 'admin'@'localhost' = 'admin';

-- Criação de um utilizador da base de dados para o grupo Bracara Eventos
CREATE USER 'bracaraevento'@'localhost';
SET PASSWORD FOR 'bracaraevento'@'localhost' = 'bracara';

-- Criação de um utilizador da base de dados para representar um utilizador comum da base de dados

CREATE USER 'genericuser'@'localhost';
SET PASSWORD FOR 'genericuser'@'localhost' = 'user';

-- ** P E R M I S S Õ E S **

-- Definição de todos os previlégios para o utilizador 'admin'.
-- Permissão de acesso a todos os objetos da base de dados "Eventos" em 'localhost'.
GRANT ALL ON Eventos.* TO 'admin'@'localhost';

-- Definição de alguns previlégios para o utilizador 'bracaraevento'. 
-- Permissão para a execução de instruções SELECT
GRANT SELECT ON  Eventos.* TO 'bracaraevento'@'localhost';


-- Definição de alguns previlégios para o utilizador 'genericuser'.
-- Permissão para a execução de instruções SELECT para certas vistas de utilização.

GRANT SELECT ON Eventos.viewatividade TO 'genericuser'@'localhost';
GRANT SELECT ON Eventos.viewevento TO 'genericuser'@'localhost';

-- (FAZER AS VISTAS)





 
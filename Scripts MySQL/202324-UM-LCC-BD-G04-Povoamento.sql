-- **
-- Universidade do Minho
-- Disciplina de Base de Dados 
-- Povoamento Inicial da base de dados
-- MySQL 8.1.0 (MySQL Community Server) (Usamos o comanod SELECT VERSION(), para verificar em que versão o MySQL está a correr.
-- 2023, Outubro/Novembro
-- Todos os dados inseridos na base de dados são fictícios.
-- **

-- Instrução para assinalar qual a base de dados em que pretendemos trabalhar 
USE Eventos;

-- Povamento das tabelas da base de dados

-- Povoamento da tabela "Agente"
-- DESC Agente
-- SELECT * FROM Agente
-- DELETE FROM Agente
INSERT INTO Agente
(IdAgente,Nome,TelefoneAgente,EmailAgente)
    VALUES
	(1,"Kay Cobb","+351 915 989 751","kaycobb@aol.com"),
	(2,"Sheev Palpatine","+351 963 436 277","sheevpalpatine_original@sith.com"),
	(3,"Flynn Mcbride","+351 934 254 373","flynnmcbride5390@yahoo.com"),
	(4,"MacKensie Salinas","+351 938 293 228","mackensiesalinas213@google.com"),
	(5,"Emma Berger","+351 961 967 284","emmaberger8413@hotmail.com"),
	(6,"Cameran Finch","+351 967 473 148","cameranfinch5153@hotmail.com"),
	(7,"Nash Dunn","+351 963 230 405","nashdunn@aol.com"),
	(8,"Brent Navarro","+351 918 607 938","brentnavarro@yahoo.com"),
	(9,"Quamar Grimes","+351 917 466 146","quamargrimes@protonmail.com"),
	(10,"Callum Fowler","+351 965 768 955","callumfowler@outlook.com"),
    (11,"Amber Merrill","+351 934 302 288","ambermerrill@outlook.com"),
	(12,"Nevada Olsen","+351 916 541 813","nevadaolsen@yahoo.com"),
	(13,"Simon Boyle","+351 967 615 826","simonboyle@icloud.com"),
	(14,"Mira Burch","+351 939 741 186","miraburch4394@protonmail.com"),
	(15,"Nicole Owen","+351 936 315 234","nicoleowen4603@protonmail.com"),
	(16,"Haley Rollins","+351 961 632 824","haleyrollins@outlook.com"),
	(17,"Lenore Hyde","+351 962 741 121","lenorehyde5379@yahoo.com"),
	(18,"Aretha Stafford","+351 918 511 616","arethastafford955@outlook.com"),
	(19,"Idona Briggs","+351 919 232 756","idonabriggs@google.com"),
	(20,"Garth Callahan","+351 967 721 792","garthcallahan@hotmail.com"),
    (21,"Roary Alston","+351 931 123 226","roaryalston8738@icloud.com"),
    (22,"George Lucas","+351 910 251 485","georgelucas@starwars.com"),
	(23,"Winifred Patterson","+351 933 816 254","winifredpatterson@outlook.com"),
	(24,"Savannah Cunningham","+351 915 093 923","savannahcunningham5281@hotmail.com"),
	(25,"Simon Vinson","+351 912 544 387","simonvinson@aol.com"),
	(26,"Jonas Downs","+351 963 188 964","jonasdowns7932@protonmail.com"),
	(27,"Tasha Carter","+351 938 383 980","tashacarter2461@google.com"),
	(28,"Stella Barnes","+351 935 285 706","stellabarnes@aol.com"),
	(29,"Keiko Leblanc","+351 937 344 532","keikoleblanc8517@icloud.com"),
	(30,"Latifah Riggs","+351 911 044 274","latifahriggs3997@outlook.com"),
    (31,"Mira Tyler","+351 963 305 403","miratyler@hotmail.com"),
	(32,"Phoebe Porter","+351 910 575 932","phoebeporter2043@outlook.com"),
	(33,"Leo Frost","+351 965 697 725","leofrost@aol.com"),
	(34,"Benjamin Weaver","+351 917 773 587","benjaminweaver1250@hotmail.com"),
	(35,"Venus Conner","+351 935 228 133","venusconner@icloud.com"),
	(36,"Allistair Boyle","+351 931 665 348","allistairboyle@hotmail.com"),
	(37,"Jamal Coleman","+351 939 346 619","jamalcoleman@icloud.com"),
	(38,"Camilla Velasquez","+351 911 813 615","camillavelasquez4745@protonmail.com"),
	(39,"Talon Garrison","+351 932 868 476","talongarrison@aol.com"),
	(40,"Allistair Sweeney","+351 919 658 662","allistairsweeney9753@icloud.com"),
	(41,"Jamal Rice","+351 913 077 143","jamalrice@google.com"),
	(42,"Stewart Ortiz","+351 934 744 911","stewartortiz@icloud.com"),
	(43,"Griffin Barry","+351 968 323 788","griffinbarry1966@yahoo.com"),
	(44,"Bree Daniel","+351 967 374 827","breedaniel3190@outlook.com"),
	(45,"Audra Schwartz","+351 913 601 819","audraschwartz7093@protonmail.com"),
	(46,"Wade Gross","+351 913 730 790","wadegross8914@google.com"),
	(47,"Dara Lindsay","+351 934 191 976","daralindsay@yahoo.com"),
	(48,"Tyrone Young","+351 918 837 096","tyroneyoung@hotmail.com"),
	(49,"Boris Case","+351 915 364 026","boriscase5246@aol.com"),
	(50,"Theodore Keller","+351 916 915 367","theodorekeller@protonmail.com");
    
INSERT INTO Agente (IdAgente, Nome, TelefoneAgente, EmailAgente)
VALUES
    (51, "Miguel Silva", "+351 911 234 567", "miguelsilva@gmail.pt"),
    (52, "Sara Costa", "+351 922 345 678", "saracosta@outlook.pt"),
    (53, "Ricardo Pereira", "+351 933 456 789", "ricardopereira@gmail.pt"),
    (54, "Inês Santos", "+351 944 567 890", "inessantos@outlook.pt"),
    (55, "Tiago Rodrigues", "+351 955 678 901", "tiagorodrigues@gmail.pt"),
    (56, "Patrícia Fernandes", "+351 966 789 012", "patriciafernandes@outlook.pt"),
    (57, "André Gonçalves", "+351 977 890 123", "andregoncalves@outlook.pt"),
    (58, "Carolina Gomes", "+351 988 901 234", "carolinagomes@sapo.pt"),
    (59, "Pedro Martins", "+351 999 012 345", "pedromartins@gmail.pt"),
    (60, "Mariana Sousa", "+351 900 123 456", "marianasousa@gmail.pt"),
    (61, "Hugo Oliveira", "+351 911 234 567", "hugooliveira@sapo.pt"),
    (62, "Joana Almeida", "+351 922 345 678", "joanaalmeida@gmail.pt"),
    (63, "Nuno Ferreira", "+351 933 456 789", "nunoferreira@sapo.pt"),
    (64, "Catarina Santos", "+351 944 567 890", "catarinasantos@sapo.pt"),
    (65, "Rui Rodrigues", "+351 955 678 901", "ruirodrigues@gmail.pt"),
    (66, "Marta Sousa", "+351 966 789 012", "martasousa@sapo.pt"),
    (67, "Diogo Gonçalves", "+351 977 890 123", "diogogoncalves@sapo.pt"),
    (68, "Ana Costa", "+351 988 901 234", "anacosta@gmail.pt"),
    (69, "Francisco Martins", "+351 999 012 345", "franciscomartins@gmail.pt"),
    (70, "Carla Silva", "+351 900 123 456", "carlasilva@sapo.pt");
    
-- Povoamento da tabela "Artista"
-- DESC Artista
-- SELECT * FROM Artista
-- DELETE FROM Artista
INSERT INTO Artista (IdArtista, Nome, Descrição, IdAgente, CustoArtista)
	VALUES
    (1, 'Michel Rodrigues', 'Artista com grande reputação mundial, viajando pelo mundo inteiro nos seus 40 anos de carreira.', 45, 2000.00),
    (2, 'Darth Vader', 'Líder e eterno guerreiro da ordem dos Sith, prepara-se agora para uma turnê mundial.', 2, 2500.00),
    (3, 'Tony Carreira', 'Movido por uma grande legião de fãs, Tony é um grande ídolo da nação portuguesa.', 5, 1500.00),
    (4, 'Darth Maul', 'Conhecido pela música "Duel of Fates", Maul promete fazer furor.', 2, 1800.00),
    (5, 'Ed Sheeran', 'Cantor e músico conhecido pelos seus hits internacionais e performances aclamadas.', 36, 3000.00),
    (6, 'The Beatles', 'Banda lendária que revolucionou a música pop e deixou um legado duradouro na cultura mundial.', 1, 5000.00),
    (7, 'Adele', 'Cantora com uma voz poderosa e letras emocionantes que a tornaram uma das mais reconhecidas artistas contemporâneas.', 23, 2800.00),
    (8, 'Michael Jackson', 'Ícone da música pop, conhecido como "Rei do Pop", com uma carreira repleta de sucessos e inovações.', 9, 4000.00),
    (9, 'Queen', 'Banda lendária que criou algumas das músicas mais icônicas da história do rock.', 11, 3500.00),
    (10, 'Coldplay', 'Banda britânica aclamada, famosa por suas músicas emocionais e espetáculos ao vivo impressionantes.', 27, 3200.00),
    (11, 'Drake', 'Rapper e cantor conhecido por seu sucesso no hip-hop e por influenciar a cultura musical.', 10, 2200.00),
    (12, 'Jay-Z', 'Rapper, empresário e produtor com uma carreira de sucesso tanto na música como nos negócios.', 43, 2500.00),
    (13, 'Luke Skywalwer & Rey Skywalker', 'Duo que promete iluminar todas as arenas que percorrerem.', 22, 1800.00),
    (14, 'Tino de Rans', '----', 41, 500.00),
    (15, 'Miguel Alecrim', '----', 42, 550.00),
    (16, 'Maroon 5', 'Banda pop conhecida por hits radiofônicos e performances ao vivo energéticas', 23, 2800.00),
    (17, 'Foo Fighters', 'Banda de rock alternativo liderada pelo ex-baterista do Nirvana, Dave Grohl.', 16, 3000.00),
    (18, 'Nirvana', 'Banda icónica dos anos 90 que deixou um legado duradouro na música.', 16, 2500.00),
    (19, 'Ambrósio Miguel', '----', 42, 600.00),
    (20, 'Rosmarinho Silva', '----', 41, 550.00),
    (21, 'Britney Spears', 'Estrela pop conhecida pelos seus sucessos que lideram as tabelas e pelas performances icónicas.', 14, 3500.00),
    (22, 'Elton John', 'Músico lendário e compositor com uma carreira que abrange várias décadas.', 8, 4000.00),
    (23, 'Taylor Swift', 'Cantora e compositora celebrada pela narrativa nas suas músicas.', 19, 3000.00),
    (24, 'Beyoncé', 'Cantora e artista reconhecida pela sua voz poderosa e presença de palco', 6, 3800.00),
    (25, 'Justin Bieber', 'Sensação pop que ganhou fama numa idade jovem e continua a criar êxitos musicais.', 12, 2500.00),
    (26, 'Kanye West', 'Rapper influente, produtor e designer de moda.', 33, 2000.00),
    (27, 'Lady Gaga', 'Artista versátil reconhecida pelo seu estilo único e talento vocal.', 7, 3200.00),
    (28, 'Rihanna', 'Cantora, atriz e empresária aclamada pela sua música e empreendimentos de moda.', 18, 3500.00),
    (29, 'Bruno Mars', 'Músico multi-talentoso conhecido pela sua impressionante extensão vocal e performances ao vivo.', 25, 3000.00),
    (30, 'Ariana Grande', 'Sensação pop com uma voz poderosa e inúmeros êxitos nas tabelas.', 31, 2800.00),
    (31, 'Katy Perry', 'Cantora e compositora conhecida pelos seus hinos pop cativantes e espetáculos ao vivo elaborados.', 30, 3200.00),
    (32, 'U2', 'Banda de rock lendária aclamada pelas suas músicas grandiosas e concertos ao vivo impactantes.', 24, 3800.00),
    (33, 'Madonna', 'Ícone pop e influenciadora cultural conhecida pela sua música inovadora e persona.', 16, 4000.00),
    (34, 'Sia', 'Cantora e compositora reconhecida pelas suas músicas emotivas e estilo vocal único.', 22, 2800.00),
    (35, 'Eminem', 'Lenda do rap com uma carreira marcada pela mestria lírica e aclamação crítica.', 13, 3000.00),
    (36, 'Shakira', 'Superestrela global conhecida pelas suas performances dinâmicas e estilo musical diversificado.', 28, 3500.00),
    (37, 'David Bowie', 'Músico inovador e ícone cultural que desafiou limites na música e na moda.', 15, 3800.00),
    (38, 'Bob Marley', 'Lenda do reggae cuja música promoveu paz, amor e mudança social.', 21, 2500.00),
    (39, 'Whitney Houston', 'Voz poderosa celebrada pela sua alma na voz e músicas icónicas.', 17, 3200.00),
    (40, 'Prince', 'Génio musical e artista inovador com um vasto catálogo de êxitos.', 20, 3500.00),
    (41, 'Mariza', 'Fadista reconhecida internacionalmente pela sua voz única e interpretações apaixonadas.', 52, 1500.00),
    (42, 'Carlos do Carmo', 'Ícone do fado, deixando um legado notável na música portuguesa.', 55, 1800.00),
    (43, 'Ana Moura', 'Fadista contemporânea com um estilo inovador e aclamada pela sua expressividade.', 52, 1600.00),
    (44, 'Amália Rodrigues', 'Rainha do fado e figura central na divulgação deste género musical tradicional português.', 51, 2000.00),
    (45, 'D.A.M.A.', 'Banda pop com sucesso comercial e um estilo cativante que conquistou o público português.', 58, 1200.00),
    (46, 'António Variações', 'Figura singular na música portuguesa, conhecido pela sua irreverência e criatividade.', 58, 1400.00),
    (47, 'Rui Veloso', 'Pioneiro do rock em Portugal, com uma carreira marcante e várias músicas icônicas.', 69, 1800.00),
    (48, 'Mão Morta', 'Banda de rock alternativo com uma abordagem única e letras provocativas.', 68, 1600.00),
    (49, 'Xutos & Pontapés', 'Banda rock com uma trajetória longa e um impacto duradouro na música portuguesa.', 68, 1500.00),
    (50, 'Gisela João', 'Fadista contemporânea, com uma voz envolvente e interpretações profundas.', 68, 1400.00),
    (51, 'Capitão Fausto', 'Banda indie pop aclamada pela sua originalidade e letras inteligentes.', 68, 1600.00),
    (52, 'Moonspell', 'Banda de metal com uma presença forte no cenário internacional.', 51, 2200.00),
    (53, 'Amor Electro', 'Grupo pop com um som cativante e músicas que conquistaram o público português.', 54, 1200.00),
    (54, 'Quim Barreiros', 'Artista popular, conhecido pelo seu estilo animado e músicas festivas.', 53, 800.00),
    (55, 'HMB', 'Banda soul/pop com um som contemporâneo e presença marcante ao vivo.', 55, 1000.00),
    (56, 'The Gift', 'Banda de música alternativa com composições originais e distintas.', 55, 1200.00),
    (57, 'Pedro Abrunhosa', 'Músico com uma carreira sólida e várias canções de sucesso.', 56, 1500.00),
    (58, 'Deolinda', 'Grupo musical com um estilo marcante que funde música tradicional com influências contemporâneas.', 67, 1200.00),
    (59, 'António Zambujo', 'Fadista e músico talentoso com uma abordagem única e sofisticada.', 60, 1600.00),
    (60, 'Aurea', 'Cantora pop com uma voz poderosa e músicas que alcançaram sucesso nacional.', 61, 1400.00),
    (61, 'Dj Kura', 'Um dos DJs mais conhecidos em Portugal e também muito cotado internacionalmente.', 70, 1000.00);

-- Povoamento da tabela "Atividade"
-- DESC Atividade
-- SELECT * FROM Atividade
-- DELETE  FROM Atividade
DELETE FROM Atividade WHERE IdAtividade = 5;
DELETE FROM Atividade WHERE IdAtividade = 6;
DELETE FROM Atividade WHERE IdAtividade = 7;


INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
    (1,"Prova da Açorda","Festival Anual da Prova da Açorca",false,"4710-251","São João do Souto","-----",'2023-12-02 15:00:00',NULL,2,NULL,100),
    (2,"Concerto Maroon 5","Concerto que faz parte do festival anual, 'Braga em Festa'",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 20:00:00',20000,3,16,4000),
    (3,"Concerto Ed Sheeran","Concerto que faz parte do festival anual, 'Braga em Festa'",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 22:00:00',20000,3,5,5000);
INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
	(5,"Concerto Dark Side, Ato 1",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 21:30:00',897,1,4,2500),
    (6,"Concerto Dark Side, Ato 2",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 22:30:00',897,1,2,2500),
	(7,"May the Force be with you, Ato Final",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 23:30:00',897,1,13,3000);
INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
	(8,"Festa da Francesinha","",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 20:00:00',NULL,2,NULL,100);
INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
    (9, 'Mercado Riscado', '',false,'4710-405','Rua de Souto', 'Claustros do Largo do Paço','2023-11-18 16:00:00',NULL,6,NULL),
    (10, 'Exposiçao “Uma Cidade Sonhadora”, de Evandro Renan','',false,'4710-237','Rua de Sao Paulo','Biblioteca Lucio Craveiro da Silva', '2023-11-19 09:30:00', NULL,6,NULL),
    (11,' Exposiçao - Sonhos ou Pesadelos?', 'Exposição Coletiva dos Alunos do MIA/IPCA',false,'4710-922','Rua do Raio','Palácio do Raio', '2023-11-20 12:30:00', NULL,6,NULL),
    (12,'Apresentação do Livro – Marcelo, Marmelo, Martelo', 'Apresentação do Livro com Raquel Costa e Bárbara Bulhosa',false,'4710-922','Rua do Souto','Salão Medieval da Reitoria da Universidade do Minho', '2023-11-25 14:30:00', NULL,6,NULL),
    (13,'Oficina do Risco – Se Eu Abrir Esta Porta Agora', 'Oficina do Risco com Alexandre Rampazo',false,'4710-239','Rua Abade Loureiro','Mercado Municipal', '2023-11-26 11:30:00', NULL,6,NULL),
    (14,'Workshop com Gabriel Pacheco', 'Workshop de pintura', false,'4710-239','Rua de Sao Paulo','Auditório da Biblioteca Lúcio Craveiro da Silva', '2023-11-27 10:00:00', NULL,6,NULL);
    INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
    (15,'Inauguração da Feira de Artesanato','', false,'4710-200','Rua da Praça','Praça Municipal', '2024-06-16 10:30:00', NULL,7,NULL),
    (16,'Faça-se Luz', 'Inauguraçao das Luzes de Sao Joao',false,'4710-332', 'Avenida Central','Chafariz', '2024-06-16 21:30:00', NULL,7,NULL),
    (17,'Rodopiada de Gigantones e Cabeçudos', 'Grupos Culturais',false, '4710-324', 'Praça da Republica', 'Chafariz', '2024-06-17 12:00:00', NULL,7,NULL),
    (18,'Concentração de automóveis antigos e clássicos','',false, '4710-455', 'Rua Abade Loureiro', 'Praça do Comércio', '2024-06-18 09:30:00', NULL,7,NULL),
    (19,'A UMinho vem ao São João','Noite académica',false, '4710-455', 'Avenida Central', 'Avenida Central e Praça Municipal', '2024-06-19 21:00:00', NULL,7,NULL),
    (20,'Concerto - Cantemos o São João','Grupos Culturais',false, '4700-030', 'Rua Dom Afonso Henriques', 'Igreja de São João do Souto', '2024-06-20 21:30:00', NULL,7,NULL),
    (21,'Gala Sanjoanina','',false, '4710-251', 'Avenida da Liberdade','Theatro Circo', '2024-06-21 21:30:00', '897',7,NULL),
    (22,'Abertura Oficial das Festas de São João de Braga','',false,'4710-217','Rua dos Capelistas','Praça do Municipio', '2024-06-23 10:00:00', NULL,7,NULL),
    (23,'São João Popular afterparty', 'Djs e muito mais',false,'4710-288','Rua do Pópulo','Pópulo', '2024-06-24 01:00:00', NULL,7,NULL),
    (24,'Fogo de Encerramento','Fogo de artificio',false,'4710-455', 'Avenida Central', 'Avenida Central e Praça Municipal', '2024-06-24 23:30:00', NULL,7,NULL);
    INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
    (25,'Concerto Xutos & Pontapés','Banda rock com uma trajetória longa e um impacto duradouro na música portuguesa.',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 19:00:00',20000,4,49),
    (26,'Concerto Rui Veloso','Pioneiro do rock em Portugal, com uma carreira marcante e várias músicas icônicas.',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 20:00:00',20000,4,47),
    (27,'Concerto Quim Barreiros','Artista popular, conhecido pelo seu estilo animado e músicas festivas',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 21:00:00',20000,4,54),
    (28,'Concerto The Gift','Banda de música alternativa com composições originais e distintas',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 21:45:00',20000,4,56),
    (29,'Concerto Pedro Abrunhosa','Músico com uma carreira sólida e várias canções de sucesso ',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 22:35:00',20000,4,57),
    (30,'Concerto Aurea','Cantora pop com uma voz poderosa e músicas que alcançaram sucesso nacional.',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-16 23:30:00',20000,4,60),
    (31,'Concerto Amor Electro','Grupo pop com um som cativante e músicas que conquistaram o público português.',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-17 00:40:00',20000,4,53),
    (32,'Mix Music com Dj Kura','Um dos Djs mais conhecidos em portugal e também muito cotado internacionalmente.',true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2023-12-17 02:00:00',20000,4,61);
     INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
    (33,'Espaço Tertúlia - Sessão Inaugural','Espetáculo de teatro de rua com encenação dos alunos do IEFP de Braga',false,"4705-002",'Rua da Praça','Praça Municipal','2024-07-01 21:45:00',NULL,8,NULL),
    (34,'Espaço Tertúlia - Apresentação de Livro','“Os Barrigas e os Magriços”, um conto de Álvaro Cunhal ilustrado por Susana Matos',false,"4705-002",'Avenida Central','Junto ao Chafariz','2024-07-02 15:00:00',NULL,8,NULL),
    (35,'Espaço Tertúlia - Apresentação de Projeto',' Projeto «Todos vivemos a mesma viagem de maneiras diferentes»',false,'4710-237','Rua de Sao Paulo','Biblioteca Lucio Craveiro da Silva','2024-07-04 14:30:00',NULL,8,NULL),
    (36,'Biblioteca Pública de Braga - Visita Guiada',' A Biblioteca Pública de Braga (BPB),oferece visitas guiadas ao seu espaço com o objetivo de dar a conhecer o espaço arquitetónico onde se encontra instalada',false,'4704-553','Largo do Paço','Biblioteca Pública de Braga','2024-07-05 13:00:00',NULL,8,NULL),
    (37,'Centro Histórico de Braga - Visita Orientada e Intervenção Artística','Projeto «Todos vivemos a mesma viagem de maneiras diferentes»',false,'4700-424','Rua Dom Paio Mendes','Sé de Braga','2024-07-07 10:30:00',NULL,8,NULL),
    (38,'Espetáculo Musical - Samba sem Fronteiras','O Samba Sem Fronteiras acontece para manter viva esta antiga chama, de uma música que nasceu para celebrar a vida',false,'4710-237','Rua de Sao Paulo','Biblioteca Lucio Craveiro da Silva','2024-07-08 19:00:00',NULL,8,NULL),
    (39,'Música e Poesia','«Três Versos e Um Copo», Grupo de Poesia da Universidade do Minho',false,"4700-322",'Largo De Santa Cruz','Jardim da Casa dos Coimbras','2024-07-09 21:30:00',NULL,8,NULL),
    (40,'Espaço dst - DO IT YOURSELF','DO IT YOURSELF: a educação e mediação cultural ao serviço da inclusão',false,'4710-922','Rua do Raio','Palácio do Raio','2024-07-11 15:00:00',NULL,8,NULL),
    (41,'Workshop na Biblioteca','Workshop - «Como utilizar os recursos da BPB?»',false,'4704-553','Largo do Paço','Biblioteca Pública de Braga','2024-07-11 16:30:00',NULL,8,NULL),
	(42,'Espaço Tertúlia - Apresentação de Livro','"Política a 45 Graus", de José Maria Pimentel. Apresentação a cargo de António Ferreira',false,'4710-237','Rua de Sao Paulo','Biblioteca Lucio Craveiro da Silva','2024-07-12 17:00:00',NULL,8,NULL);
     INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista,CustoAtividade)
    VALUES
   (43,'Abertura Hopen','Abertura do festival com oferta de uma cerveja artesanal',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-02 17:00:00',NULL,5,NULL),
   (44,'Sunset Cocktails','Sunset ao ar livre para aproveitar o pôr do sol',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-02 19:00:00',NULL,5,NULL),
   (45,'Hopen After Party','After Party após o encerramento no Setra',false,'4700-325','Rua de Sao Joao', 'Setra Braga','2023-06-03 02:10:00',NULL,5,NULL),
   (46,'Passeio de Bicicleta','Um passeio de bicicleta CYCLE CHIC por Braga',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-03 15:00:00',NULL,5,NULL),
   (47,'Showcooking BEER and CHEESE','Showcooking organizado pela marca Cerveja Burguesa',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-03 18:00:00',NULL,5,NULL),
   (48,'Apresentaçao e Prova de cerveja artesanal','Apresentaçao de Cervejas artesanais pela Malteca Cervejaria',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-03 22:00:00',NULL,5,NULL),
   (49,'Atuaçao Tuna UM','Atuaçao da Tuna de Medicina da Universidade do Minho',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-04 15:00:00',NULL,5,NULL),
   (50,'Workshop Produçao de Cerveja','Workshop que visa explicar o processo da produçao de cervejas artesanais',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-04 17:00:00',NULL,5,NULL),
   (51,'DJ Set Encerramento','Dj Set vinil Musica com Clasen para encerrar o Festival',false,'4700-210','Rua Nova da Estaçao', 'Campo das Hortas','2023-06-04 23:00:00',NULL,5,NULL);
SELECT * FROM ATIVIDADE;
SELECT * FROM EVENTO;



INSERT INTO Evento (IdEvento, Nome, Descrição, DataInicio, DataFim, CodPostal, DescriçãoLocal, Rua, Pago, ValorTotal, QuantidadeBilhetesVendidos, Preço)
VALUES
	(1, 'Star Wars: O Concerto', 'Concerto épico sobre este incrível universo', '2024-10-11 21:30:00', '2024-10-11 21:30:00', '4710-251', 'Teatro Circo', '----', true, 0, 0, 0),
	(2, 'Mes Gastronómico em Braga', 'Um mês de pura felicidade, com a melhor comida do país.', '2023-12-02 15:00:00', '2024-01-02 15:00:00', '4705-002', 'Braga', '-----', false, 0, 0, 0),
	(3, 'Braga Authentica', 'Festival anual na cidade de braga', '2024-05-02 20:00:00', '2024-08-02 00:00:00', '4705-002', 'Altice Forum', '-----', true, 0, 0, 0),
    (4, 'Xmas Night Music', 'Prepare-se para uma noite de pura nostalgia em Braga', '2024-12-16 19:00:00', '2024-12-17 05:00:00', '4705-002', 'Altice Forum', '-----', true, 0, 0, 0),
    (5, 'Hopen – Braga Beer Festival', 'Hopen está de portas abertas e vai desafiar-te a explorar novos sabores e aromas das melhores cervejas artesanais','2023-06-02 17:00:00', '2024-06-04 23:00:00', '4700-210', 'Campo das Hortas', '-----', false, 0, 0, 0),
    (6, 'Braga em Risco', 'Ao longo de duas semanas, as ruas da cidade serão invadidas por ilustrações de artistas de todo o mundo','2023-11-18 14:30:00', '2023-11-30 12:30:00', '4700-320', 'Largo do Paço', '-----', false, 0, 0, 0),
    (7, 'Sao Joao de Braga', 'A Maior Festa Popular de Portugal','2024-06-16 10:30:00', '2024-06-24 23:30:00', '4715-406', 'Avenida Central', '-----', false, 0, 0, 0),
    (8, 'Feira do Livro', 'Uma cidade livro aberto, onde cada um pode e deve escrever a sua história', '2024-07-01 10:00:00', '2024-07-12 17:00:00', '4710-235', 'Avenida Central', '-----', false, 0, 0, 0);
    
    INSERT INTO Bilhete
(NumBilhete,Preço,IdEvento,IdAtividade)
	VALUES
    (1,135.00,1,NULL), 	-- bilhete evento 1
    (2,65.00,3,NULL), 	-- bilhete evento 3
    (3,50.00,4,NULL), 	-- bilhete evento 4
    (4,50.00,1,5), 		-- bilhete atividade id 5 do evento 1
    (5,50.00,1,6), 		-- bilhete atividade id 6 do evento 1
    (6,60.00,1,7),      -- bilhete atividade id 7 do evento 1
    (7,12.50,2,8), 		-- bilhete atividade id 8 do evento 2 (evento gratuito, atividade paga)
    (8,6.5,4,25),       -- bilhete atividade id 25 do evento 4
    (9,6.5,4,26), 		-- bilhete atividade id 26 do evento 4
    (10,6.5,4,27), 		-- bilhete atividade id 27 do evento 4
    (11,6.5,4,28), 		-- bilhete atividade id 28 do evento 4
    (12,6.5,4,29), 		-- bilhete atividade id 29 do evento 4
    (13,6.5,4,30), 		-- bilhete atividade id 30 do evento 4
    (14,6.5,4,31), 		-- bilhete atividade id 31 do evento 4
    (15,6.5,4,32);		-- bilhete atividade id 32 do evento 4
    





		








	
    


    

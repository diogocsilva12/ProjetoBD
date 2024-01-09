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
INSERT INTO Artista
(IdArtista,Nome,Descrição,IdAgente)
    VALUES
    (1,'Michel Rodrigues','Artista de com grande reputação mundial, viajando pelo mundo inteiro nos seus 40 anos de carreira.',45),
    (2,'Darth Vader','Líder e eterno gerrueiro da ordem dos Sith, prepara-se agora para uma turnê mundial.',2),
    (3,'Tony Carreira','Movido por uma grande legião de fãs, Tony é um grande ídolo da nação portuguesa.',5),
    (4,'Darth Maul','Conhecido pela música "Duel of Fates", Maul prometo fazer furor',2),
    (5,'Ed Sheeran','Cantor e músico conhecido pelos seus hits internacionais e performances aclamadas.',36),
    (6,'The Beatles','Banda lendária que revolucionou a música pop e deixou um legado duradouro na cultura mundial.',1),
    (7,'Adele','Cantora com uma voz poderosa e letras emocionantes que a tornaram uma das mais reconhecidas artistas contemporâneas.',23),
    (8,'Michael Jackson','Ícone da música pop, conhecido como "Rei do Pop", com uma carreira repleta de sucessos e inovações.',9),
    (9,'Queen','Banda lendária que criou algumas das músicas mais icônicas da história do rock.',11),
    (10,'Coldplay','Banda britânica aclamada, famosa por suas músicas emocionais e espetáculos ao vivo impressionantes.',27),
    (11,'Drake','Rapper e cantor conhecido por seu sucesso no hip-hop e por influenciar a cultura musical.',10),
    (12,'Jay-Z ','Rapper, empresário e produtor com uma carreira de sucesso tanto na música como nos negócios.',43),
    (13,'Luke Skywalwer & Rey Skywalker','Duo que pormete iluminar todas as arenas que percorrerem',22),
    (14,'Tino de Rans','----',41),
    (15,'Miguel Alecrim','----',42),
    (16,'Maroon 5','Banda pop conhecida por hits radiofônicos e performances ao vivo energéticas',23),
    (17,'Foo Fighters','Banda de rock alternativo liderada pelo ex-baterista do Nirvana, Dave Grohl.',16),
    (18,'Nirvana','Banda icónica dos anos 90 que deixou um legado duradouro na música.',16),
    (19,'Ambrósio Miguel','----',42),
    (20,'Rosmarinho silva','----',41);
    
INSERT INTO Artista (IdArtista, Nome, Descrição, IdAgente)
VALUES
    (21,'Britney Spears','Estrela pop conhecida pelos seus sucessos que lideram as tabelas e pelas performances icónicas.', 14),
    (22,'Elton John','Músico lendário e compositor com uma carreira que abrange várias décadas.', 8),
    (23,'Taylor Swift','Cantora e compositora celebrada pela narrativa nas suas músicas.', 19),
    (24,'Beyoncé','Cantora e artista reconhecida pela sua voz poderosa e presença de palco', 6),
    (25,'Justin Bieber','Sensação pop que ganhou fama numa idade jovem e continua a criar êxitos musicais.', 12),
    (26,'Kanye West','Rapper influente, produtor e designer de moda.', 33),
    (27,'Lady Gaga','Artista versátil reconhecida pelo seu estilo único e talento vocal.', 7),
    (28,'Rihanna','Cantora, atriz e empresária aclamada pela sua música e empreendimentos de moda.', 18),
    (29,'Bruno Mars','Músico multi-talentoso conhecido pela sua impressionante extensão vocal e performances ao vivo.', 25),
    (30,'Ariana Grande','Sensação pop com uma voz poderosa e inúmeros êxitos nas tabelas.', 31),
    (31,'Katy Perry','Cantora e compositora conhecida pelos seus hinos pop cativantes e espetáculos ao vivo elaborados.', 30),
    (32,'U2','Banda de rock lendária aclamada pelas suas músicas grandiosas e concertos ao vivo impactantes.', 24),
    (33,'Madonna','Ícone pop e influenciadora cultural conhecida pela sua música inovadora e persona.', 16),
    (34,'Sia','Cantora e compositora reconhecida pelas suas músicas emotivas e estilo vocal único.', 22),
    (35,'Eminem','Lenda do rap com uma carreira marcada pela mestria lírica e aclamação crítica.', 13),
    (36,'Shakira','Superestrela global conhecida pelas suas performances dinâmicas e estilo musical diversificado.', 28),
    (37,'David Bowie','Músico inovador e ícone cultural que desafiou limites na música e na moda.', 15),
    (38,'Bob Marley','Lenda do reggae cuja música promoveu paz, amor e mudança social.', 21),
    (39,'Whitney Houston','Voz poderosa celebrada pela sua alma na voz e músicas icónicas.', 17),
    (40,'Prince','Génio musical e artista inovador com um vasto catálogo de êxitos.', 20);
    INSERT INTO Artista (IdArtista, Nome, Descrição, IdAgente)
VALUES
    (41,'Mariza','Fadista reconhecida internacionalmente pela sua voz única e interpretações apaixonadas.', 52),
    (42,'Carlos do Carmo','Ícone do fado, deixando um legado notável na música portuguesa.', 55),
    (43,'Ana Moura','Fadista contemporânea com um estilo inovador e aclamada pela sua expressividade.', 52),
    (44,'Amália Rodrigues','Rainha do fado e figura central na divulgação deste género musical tradicional português.', 51),
    (45,'D.A.M.A.','Banda pop com sucesso comercial e um estilo cativante que conquistou o público português.', 58),
    (46,'António Variações','Figura singular na música portuguesa, conhecido pela sua irreverência e criatividade.', 58),
    (47,'Rui Veloso','Pioneiro do rock em Portugal, com uma carreira marcante e várias músicas icônicas.', 69),
    (48,'Mão Morta','Banda de rock alternativo com uma abordagem única e letras provocativas.', 68),
    (49,'Xutos & Pontapés','Banda rock com uma trajetória longa e um impacto duradouro na música portuguesa.', 68),
    (50,'Gisela João','Fadista contemporânea, com uma voz envolvente e interpretações profundas.', 68),
    (51,'Capitão Fausto','Banda indie pop aclamada pela sua originalidade e letras inteligentes.', 68),
    (52,'Moonspell','Banda de metal com uma presença forte no cenário internacional.', 51),
    (53,'Amor Electro','Grupo pop com um som cativante e músicas que conquistaram o público português.', 54),
    (54,'Quim Barreiros','Artista popular, conhecido pelo seu estilo animado e músicas festivas.', 53),
    (55,'HMB','Banda soul/pop com um som contemporâneo e presença marcante ao vivo.', 55),
    (56,'The Gift','Banda de música alternativa com composições originais e distintas.', 55),
    (57,'Pedro Abrunhosa','Músico com uma carreira sólida e várias canções de sucesso.', 56),
    (58,'Deolinda','Grupo musical com um estilo marcante que funde música tradicional com influências contemporâneas.', 67),
    (59,'António Zambujo','Fadista e músico talentoso com uma abordagem única e sofisticada.', 60),
    (60,'Aurea','Cantora pop com uma voz poderosa e músicas que alcançaram sucesso nacional.', 61);

-- Povoamento da tabela "Atividade"
-- DESC Atividade
-- SELECT * FROM Atividade
-- DELETE  FROM Atividade
DELETE FROM Atividade WHERE IdAtividade = 5;
DELETE FROM Atividade WHERE IdAtividade = 6;
DELETE FROM Atividade WHERE IdAtividade = 7;


INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista)
    VALUES
    (1,"Prova da Açorda","Festival Anual da Prova da Açorca",false,"4710-251","São João do Souto","-----",'2023-12-02 15:00:00',NULL,2,NULL),
    (2,"Concerto Maroon 5","Concerto que faz parte do festival anual, 'Braga em Festa'",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 20:00:00',20000,3,16),
    (3,"Concerto Ed Sheeran","Concerto que faz parte do festival anual, 'Braga em Festa'",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 22:00:00',20000,3,5);
INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista)
    VALUES
	(5,"Concerto Dark Side, Ato 1",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 21:30:00',897,1,4),
    (6,"Concerto Dark Side, Ato 2",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 22:30:00',897,1,2),
	(7,"May the Force be with you, Ato Final",NULL,true,"4710-251","Av. da Liberdade","Teatro Circo",'2024-10-11 23:30:00',897,1,13);
INSERT INTO Atividade
(IdAtividade,Nome,Descrição,Pago,CodPostal,Rua,DescriçãoLocal,Data,Lotação,IdEvento,IdArtista)
    VALUES
	(8,"Festa da Francesinha","",true,"4705-002","R. Monsenhor Airosa","Altice Forum",'2024-05-02 20:00:00',NULL,2,NULL);

SELECT * FROM ATIVIDADE;
SELECT * FROM EVENTO;



INSERT INTO Evento (IdEvento, Nome, Descrição, DataInicio, DataFim, CodPostal, DescriçãoLocal, Rua, Pago, ValorTotal, QuantidadeBilhetesVendidos, Preço)
VALUES
	(1, 'Star Wars: O Concerto', 'Concerto épico sobre este incrível universo', '2024-10-11 21:30:00', '2024-10-11 21:30:00', '4710-251', 'Teatro Circo', '----', true, 0, 0, 0),
	(2, 'Mes Gastronómico em Braga', 'Um mês de pura felicidade, com a melhor comida do país.', '2023-12-02 15:00:00', '2024-01-02 15:00:00', '4705-002', 'Braga', '-----', false, 0, 0, 0),
	(3, 'Braga Authentica', 'Festival anual na cidade de braga', '2024-05-02 20:00:00', '2024-08-02 00:00:00', '4705-002', 'Altice Forum', '-----', true, 0, 0, 0);


INSERT INTO Bilhete
(NumBilhete,Preço,IdEvento,IdAtividade)
	VALUES
    (1,35.00,1,NULL),
    (2,50.00,3,NULL);

INSERT INTO Bilhete
(NumBilhete,Preço,IdEvento,IdAtividade)
	VALUES
    (4,20.00,NULL,2);

    
INSERT INTO Bilhete
(NumBilhete,Preço,IdEvento,IdAtividade)
	VALUES
    (3,12.5,NULL,8);
    




		








	
    


    

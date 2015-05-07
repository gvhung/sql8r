-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51a-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema giallo
--

CREATE DATABASE IF NOT EXISTS giallo;
USE giallo;

--
-- Temporary table structure for view `most_known_akas`
--
DROP TABLE IF EXISTS `most_known_akas`;
DROP VIEW IF EXISTS `most_known_akas`;
CREATE TABLE `most_known_akas` (
  `Id` int(10) unsigned,
  `Title` varchar(75),
  `Film_Id` int(10) unsigned,
  `Most Known Title` tinyint(1)
);

--
-- Temporary table structure for view `my_releases`
--
DROP TABLE IF EXISTS `my_releases`;
DROP VIEW IF EXISTS `my_releases`;
CREATE TABLE `my_releases` (
  `Orig Title` varchar(75),
  `Most known as` varchar(75),
  `Year` int(10) unsigned,
  `Format` varchar(45),
  `Country` varchar(45),
  `Needs subs` tinyint(1)
);

--
-- Temporary table structure for view `seen`
--
DROP TABLE IF EXISTS `seen`;
DROP VIEW IF EXISTS `seen`;
CREATE TABLE `seen` (
  `title` varchar(75),
  `year` int(10) unsigned,
  `director` varchar(45)
);

--
-- Definition of table `aka`
--

DROP TABLE IF EXISTS `aka`;
CREATE TABLE `aka` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Title` varchar(75) NOT NULL default 'EMPTY',
  `Film_Id` int(10) unsigned NOT NULL,
  `Most Known Title` tinyint(1) NOT NULL default '0',
  `Origin` varchar(45) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `FK_Aka_FILM` (`Film_Id`),
  CONSTRAINT `FK_Aka_FILM` FOREIGN KEY (`Film_Id`) REFERENCES `film` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aka`
--

/*!40000 ALTER TABLE `aka` DISABLE KEYS */;
INSERT INTO `aka` (`Id`,`Title`,`Film_Id`,`Most Known Title`,`Origin`) VALUES 
 (2,'The Evil Eye',3,1,NULL),
 (3,'La fille qui en savait trop',3,0,NULL),
 (4,'The Girl Who Knew Too Much',3,0,NULL),
 (5,'L\'incubo',3,0,NULL),
 (6,'Más allá del exorcismo',3,0,NULL),
 (7,'Olhos Diabólicos',3,0,NULL),
 (8,'A Rapariga Que Sabia Demais',3,0,NULL),
 (9,'Assassination in Rome',4,0,NULL),
 (10,'Assassinio Made in Italy',4,0,NULL),
 (11,'El secreto de Bill North',4,0,NULL),
 (12,'La casa sulla fungaia',5,0,NULL),
 (13,'Death on the Fourposter',6,0,NULL),
 (14,'Les possédées du demon',6,0,NULL),
 (15,'Sexy Party',6,0,NULL),
 (16,'The Embalmer',7,0,NULL),
 (17,'The Monster of Venice',7,0,NULL),
 (18,'6 donne per l\'assassino',8,0,NULL),
 (19,'6 femmes pour l\'assassin',8,0,NULL),
 (20,'Blood and Black Lace',8,1,NULL),
 (21,'Tenebrae',165,1,NULL),
 (22,'New York Ripper',164,1,NULL),
 (23,'Scorpion with Two Tails',161,1,NULL),
 (24,'Murder Obsession',159,1,NULL),
 (25,'The Secret of Seagull Island',158,1,NULL),
 (26,'Killer Nun',152,1,NULL),
 (27,'The Double',50,1,NULL),
 (28,'Date for a Murder',20,1,NULL),
 (29,'Cross Current',66,1,NULL),
 (30,'Deadly Inheritance',21,1,NULL),
 (31,'The Girl In Room 2A',104,1,NULL),
 (32,'Red Headed Corpse',69,1,NULL),
 (33,'Death Knocks Twice',30,1,NULL),
 (34,'Masters',166,1,NULL),
 (35,'Utsökta lik',168,0,'SWE CINEMA'),
 (36,'Döden lägger ägg',19,0,'SWE CINEMA'),
 (37,'Iguana with the Tongue of Fire',56,1,NULL),
 (38,'Knife of Ice',81,0,NULL),
 (39,'La Morte bussa due volte',30,0,NULL),
 (40,'Eye in the Labyrinth',174,1,NULL),
 (41,'Ögat i labyrinten',174,0,'SWE VIDEO'),
 (42,'The Two Faces of Fear',84,1,NULL);
/*!40000 ALTER TABLE `aka` ENABLE KEYS */;


--
-- Definition of table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Title` varchar(75) NOT NULL default 'EMPTY',
  `Year` int(10) unsigned NOT NULL,
  `Director` varchar(45) default NULL,
  `Seen` tinyint(1) default '0',
  `Listed in BBL` tinyint(1) NOT NULL default '0' COMMENT 'Blood And Black Lace',
  `Listed in GBL` tinyint(1) NOT NULL default '0' COMMENT 'Gialloboys List',
  `Listed in CGP` tinyint(1) NOT NULL default '0' COMMENT 'Cinemaggeddon Giallo Project',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`Id`,`Title`,`Year`,`Director`,`Seen`,`Listed in BBL`,`Listed in GBL`,`Listed in CGP`) VALUES 
 (3,'La ragazza che sapeva troppo',1963,'Mario Bava',1,1,0,0),
 (4,'Il segreto del vestito rosso',1965,'Silvio Amadio',0,1,0,0),
 (5,'Crimine a due',1965,'Romano Ferrara',0,1,0,0),
 (6,'Delitto allo specchio',1964,'Jean Josipovici & Ambrogio Molteni',0,1,0,0),
 (7,'Il mostro di venezia',1965,'Dino Tavella',0,1,0,0),
 (8,'Sei donne per l\'assassino',1964,'Mario Bava',1,1,0,0),
 (9,'24 ore di terrore',1964,'Gastone Grandi',0,1,0,0),
 (10,'La donna del lago',1965,'Luigi Bazzoni & Franco Rossellini',0,1,0,0),
 (11,'Libido',1965,'Ernesto Gastaldi & Vittorio Salerno',0,1,0,0),
 (13,'A... come assassino',1966,'Angelo Dorigo',0,1,0,0),
 (14,'La lama nel corpo',1967,'Elio Scardamaglia',0,1,0,0),
 (15,'Le notti della violenza',1966,'Roberto Mauri',0,1,0,0),
 (16,'Il terzo occhio',1966,'Mino Guerrini',0,1,0,0),
 (17,'Col cuore in gola',1967,'Tinto Brass',1,1,0,0),
 (18,'Il dolce corpo di Deborah',1968,'Romolo Guerrieri',1,1,0,0),
 (19,'La morte ha fatto l\'uovo',1968,'Giulio Questi',1,1,0,0),
 (20,'Omicidio per appuntamento',1967,'Mino Guerrini',1,1,0,0),
 (21,'L\'assassino ha le mane pulite',1968,'Vittorio Sindoni',1,1,0,0),
 (22,'Assassino senza volto',1968,'Angelo Dorigo',0,1,0,0),
 (23,'Viaje al vacío',1969,'Javier Seto',0,1,0,0),
 (24,'La morte non ha sesso',1968,'Massimo Dallamano',1,1,0,0),
 (25,'Nuda... si muore',1968,'Antonio Margheriti',1,1,0,0),
 (27,'Piu tardi Claire, piu tardi...',1968,'Brunello Rondi',0,1,0,0),
 (28,'Una ragazza piuttosto complicate',1968,'Damiano Damiani',0,1,0,0),
 (29,'La bambola di Satana',1969,'Ferruccio Casapinta',0,1,0,0),
 (30,'Blonde Köder für den Mörder',1969,'Harald Philipp',1,1,0,0),
 (31,'Cosí dolce... cosí perversa',1969,'Umberto Lenzi',1,1,0,0),
 (32,'Interrabang',1969,'Giuliano Biagetti',1,1,0,0),
 (33,'Orgasmo',1969,'Umberto Lenzi',1,1,0,0),
 (34,'Paranoia',1970,'Umberto Lenzi',1,1,0,0),
 (35,'L\'uccello dalle piume di cristallo',1970,'Dario Argento',1,1,0,0),
 (36,'Una sull\'atra',1969,'Lucio Fulci',1,1,0,0),
 (37,'Yellow - le cugine',1969,'Gianfranco Baldanello',0,1,0,0),
 (38,'Cinque bambole per la luna d\'agosto',1970,'Mario Bava',1,1,0,0),
 (39,'La coda dello scorpione',1971,'Sergio Martino',1,1,0,0),
 (40,'Concerto per pistola solista',1970,'Michele Lupo',0,1,0,0),
 (41,'Le foto proibite di una signora per bene',1970,'Luciano Ercoli',1,1,0,0),
 (42,'La morte risale a ieri sera',1970,'Duccio Tessari',0,1,0,0),
 (43,'Nelle pieghe della carne',1970,'Sergio Bergonzelli',1,1,0,0),
 (44,'Il rosso segno della follia',1970,'Mario Bava',1,1,0,0),
 (45,'Lo strano vizio della Signora Wardh',1971,'Sergio Martino',1,1,0,0),
 (46,'Le tue mani sul mio corpo',1970,'Brunello Rondi',0,1,0,0),
 (47,'Il tuo dolce corpo da uccidere',1970,'Alfonso Brescia',0,1,0,0),
 (48,'Alla ricera del piacere',1972,'Silvio Amadio',1,1,0,0),
 (49,'La bestia uccide a sangue freddo',1971,'Fernando Di Leo',1,1,0,0),
 (50,'La controfigura',1971,'Romolo Guerrieri',1,1,0,0),
 (51,'Cosa avete fatto a Solange?',1972,'Massimo Dallamano',1,1,0,0),
 (52,'Il diavolo a sette face',1971,'Osvaldo Civirani',1,1,0,0),
 (53,'Il diavolo nel cervello',1972,'Sergio Sollima',0,1,0,0),
 (54,'Reazione a catena',1971,'Mario Bava',1,1,0,0),
 (55,'Una farfalla con le ali insanguinata',1971,'Duccio Tessari',1,1,0,0),
 (56,'L\'iguana dalla lingua di fuoco',1971,'Riccardo Freda',1,1,0,0),
 (57,'Il gatto a nove code',1971,'Dario Argento',1,1,0,0),
 (58,'Giornata nera per l\'ariete',1971,'Luigi Bazzoni',1,1,0,0),
 (59,'Jack el destripador de Londres',1971,'Jose Luis Madrid',1,1,0,0),
 (60,'Una lucertola con la pelle di donna',1971,'Lucio Fulci',1,1,0,0),
 (61,'Mio cara assassino',1972,'Tonino Valeri',1,1,0,0),
 (62,'La morte cammina con i tacchi alti',1971,'Luciano Ercoli',1,1,0,0),
 (63,'La notte che Evelyn uscí dalla tomba',1971,'Emilio Miraglia',1,1,0,0),
 (64,'Gli occhi freddi della paura',1971,'Enzo G. Castellari',1,1,0,0),
 (65,'El ojo del huracán',1971,'Jose Maria Forque',1,1,0,0),
 (66,'Un omicidio perfetto a termine di legge',1971,'Tonino Ricci',0,1,0,0),
 (67,'Un posto ideale per uccidere',1971,'Umberto Lenzi',1,1,0,0),
 (68,'Quattro mosche di velluto grigio',1971,'Dario Argento',1,1,0,0),
 (69,'La rossa dalla pelle che scotta',1971,'Renzo Russo',0,0,0,0),
 (70,'Sette orchidee macchiate di rosso',1972,'Umberto Lenzi',1,1,0,0),
 (71,'La tarantola dal ventre nero',1971,'Paolo Cavara',1,1,0,0),
 (72,'La última señora Anderson',1971,'Eugenio Martin',0,1,0,0),
 (73,'L\'uomo piu velenoso del cobra',1971,'Bitto Albertini',1,1,0,0),
 (74,'La vittima designate',1971,'Maurizio Lucidi',1,1,0,0),
 (75,'Al tropici del Cancro',1972,'Gian Paolo Lomi & Edoardo Mulargia',1,1,0,0),
 (76,'Amore e morte nel giardino degli dei',1972,'Sauro Scavolini',0,1,0,0),
 (77,'L\'assassino é al telefono',1972,'Alberto De Martino',1,1,0,0),
 (78,'Un bianco vestito per Mariale',1972,'Romano Scavolini',0,1,0,0),
 (79,'La casa d\'appuntamento',1972,'Ferdinando Merighi',1,1,0,0),
 (80,'Chi l\'ha vista morire?',1972,'Aldo Lado',1,1,0,0),
 (81,'Il coltello di ghiaccio',1972,'Umberto Lenzi',1,1,0,0),
 (82,'La dama rossa uccide sette volte',1972,'Emilio Miraglia',1,1,0,0),
 (83,'Delirio caldo',1972,'Renato Polselli',1,1,0,0),
 (84,'I due volti della paura',1972,'Tulio Demicheli',0,1,0,0),
 (85,'L\'Etrusco uccide ancora',1972,'Armando Crispino',1,1,0,0),
 (86,'La corta notte delle bambole di vetro',1972,'Aldo Lado',1,1,0,0),
 (87,'La mansión de la niebla',1972,'Francisco Lara Polop & Pedro Lazaga',0,1,0,0),
 (88,'La morte accarezza a mezzanotte',1972,'Luciano Ercoli',1,1,0,0),
 (89,'La morte scende leggera',1972,'Leopoldo Savona',0,1,0,0),
 (90,'Non si sevezia un Paperino',1972,'Lucio Fulci',1,1,0,0),
 (91,'Passi di danza su una lama di rasoio',1972,'Maurizio Pradeaux',1,1,0,0),
 (92,'La polizia brancola nel buio',1975,'Helia Colombo',0,1,0,0),
 (93,'Ragazza tutta nuda assassinate nel parco',1972,'Alfonso Brescia',1,1,0,0),
 (94,'Sette orchidee macchiate di rosso',1972,'Umberto Lenzi',1,1,0,0),
 (95,'Sette scialli di seta gialla',1972,'Sergio Pastore',1,1,0,0),
 (96,'Il sorriso della iena',1972,'Silvio Amadio',1,1,0,0),
 (97,'Il terrore von gli occhi storti',1972,'Steno',0,1,0,0),
 (98,'Tutti I colori del buio',1972,'Sergio Martino',1,1,0,0),
 (99,'Perché quelle strane gocce di sangue sul corpo di Jennifer?',1972,'Giuliano Carnimeo',1,1,0,0),
 (100,'Rivelazioni di un maniaco sessuale al capo della squadra mobile',1972,'Roberto Bianchi Montero',1,1,0,0),
 (101,'Terza ipotesi su un caso di perfetta strategia criminale',1972,'Giuseppe Vari',0,1,0,0),
 (102,'Il tuo vizio é una stanza chiusa é solo lo ne ho la chiave',1972,'Sergio Martino',1,1,0,0),
 (103,'L\'arma, l\'ora, il movente',1973,'Francesco Mazzei',0,1,0,0),
 (104,'La casa della paura',1973,'William L. Rose',0,1,0,0),
 (105,'I corpi presentano trace di violenza carnale',1973,'Sergio Martino',1,1,0,0),
 (106,'Il fiore dai petali d\'accaio',1973,'Gianfranco Piccioli',0,1,0,0),
 (107,'Giorni d\'amore sul filo di una lama',1973,'Giuseppe Pellegrini',0,1,0,0),
 (108,'La morte negli occhi del gatto',1973,'Antonio Margheriti',1,1,0,0),
 (109,'5 donne per l\'assassino',1974,'Stelvio Massi',0,1,0,0),
 (110,'L\'assassino ha riservato nove poltrone',1974,'Giuseppe Bennati',1,1,0,0),
 (111,'Il baco da seta',1974,'Mario Sequi',0,1,0,0),
 (112,'Ciak si muore',1974,'Mario Moroni',0,1,0,0),
 (113,'Delitto d\'autore',1974,'Mario Sabatini',0,1,0,0),
 (114,'Gatti rossi in un labirinto di vetro',1975,'Umberto Lenzi',1,1,0,0),
 (116,'Macchie solari',1975,'Armando Crispino',1,1,0,0),
 (117,'Mania',1974,'Renato Polselli',0,1,0,0),
 (118,'La muerte llama a las diez',1974,'Juan Bosch',0,1,0,0),
 (119,'Ordine firmato in bianco',1975,'Gianni Manera',0,1,0,0),
 (120,'Le orme',1975,'Luigi Bazzoni & Mario Fanelli',1,1,0,0),
 (121,'La polizia chiede auito',1974,'Massimo Dallamano',1,1,0,0),
 (122,'Il profumo della signora in nero',1974,'Francesco Barilli',1,1,0,0),
 (123,'Prostituzione',1974,'Rino Di Silvestro',1,1,0,0),
 (124,'Spasmo',1974,'Umberto Lenzi',1,1,0,0),
 (125,'L\' uomo senza memoria',1974,'Duccio Tessari',1,1,0,0),
 (126,'...a tutte le auto della polizia',1975,'Mario Caiano',0,1,0,0),
 (127,'L\'assassino é costretto ad uccidere ancora',1975,'Luigi Cozzi',1,1,0,0),
 (128,'Giochi erotici di una famiglia perbene',1975,'Francesco Degli Espinosa',0,1,0,0),
 (129,'Milano, morte sospetta di una minorenne',1975,'Sergio Martino',1,1,0,0),
 (130,'Nude x l\'assassino',1975,'Andrea Bianchi',1,1,0,0),
 (131,'Profondo rosso',1975,'Dario Argento',1,1,0,0),
 (132,'La sanguisuga conduce la danza',1975,'Alfredo Rizzo',1,1,0,0),
 (133,'Il vizio ha le calze nere',1975,'Tano Cimarosa',1,1,0,0),
 (134,'Anima persa',1977,'Dino Risi',0,1,0,0),
 (135,'La casa dalle finestre che ridono',1976,'Pupi Avati',1,1,0,0),
 (136,'Con la rabbia agli occhi',1976,'Antonio Margheriti',0,0,0,0),
 (137,'...e tanta paura',1976,'Paolo Cavara',1,1,0,0),
 (138,'Nove ospiti per un delitto',1977,'Ferdinando Baldi',0,1,0,0),
 (139,'Passi di morte perduti nel buio',1977,'Maurizio Pradeaux',1,1,0,0),
 (140,'Doppio delitto',1978,'Steno',0,1,0,0),
 (141,'Il gatto dagli occhi di giada',1977,'Antonio Bido',1,1,0,0),
 (142,'Il mostro',1977,'Luigi Zampa',0,1,0,0),
 (143,'L\'occhio dietro la parete',1977,'Giuliano Petrelli',1,1,0,0),
 (144,'Sette note in nero',1977,'Lucio Fulci',1,1,0,0),
 (145,'I vizi morbosi di una governante',1977,'Filippo Walter Ratti',1,1,0,0),
 (146,'Enigma rosso',1978,'Alberto Negrin',1,1,0,0),
 (147,'Indagine su un delitto perfetto',1978,'Giuseppe Rosati',1,1,0,0),
 (148,'Pensione paura',1977,'Francesco Barilli',0,1,0,0),
 (149,'La ragazza dal piagama giallo',1977,'Flavio Mogherini',1,1,0,0),
 (150,'Solamente nero',1978,'Antonio Bido',1,1,0,0),
 (151,'La sorella di Ursula',1978,'Enzo Milioni',1,1,0,0),
 (152,'Suor omicidi',1978,'Giulio Berruti',1,1,0,0),
 (154,'Giallo a venezia',1979,'Mario Landi',1,1,0,0),
 (155,'Giallo Napoletano',1978,'Sergio Corbucci',0,1,0,0),
 (156,'Play Motel',1979,'Mario Gariazzo',1,1,0,0),
 (157,'Trhauma',1980,'Gianni Martucci',0,1,0,0),
 (158,'L\'isola del gabbiano',1980,'Nestore Ungaro',0,1,0,0),
 (159,'L\'ossessione che uccide',1980,'Riccardo Freda',1,1,0,0),
 (160,'There Was a Little Girl',1981,'Ovidio G. Assonitis',0,1,0,0),
 (161,'Assassinio al cimitero Etrusco',1982,'Sergio Martino',0,1,0,0),
 (164,'Lo squartatore di New York',1982,'Lucio Fulci',1,1,0,0),
 (165,'Tenebre',1982,'Dario Argento',1,1,0,0),
 (166,'Gente di rispetto',1975,'Luigi Zampa',0,0,0,1),
 (167,'Nel buio del terrore',1971,'José Antonio Nieves Conde',0,0,0,0),
 (168,'Cadaveri eccellenti',1976,'Francesco Rosi',0,0,0,0),
 (169,'Blow-Up',1966,'Michelangelo Antonioni',1,1,0,0),
 (170,'A.A.A massaggiatrice bella presenza offresi...',1972,'Demofilo Fidani',0,1,0,0),
 (172,'Don\'t Look Now',1973,'Nicholas Roeg',1,1,0,0),
 (173,'Autostop rosso sangue',1977,'Pasquale Festa Campanile',1,1,0,0),
 (174,'L\'Occhio nel labirinto',1972,'Mario Caiano',1,0,0,0),
 (175,'L\'Intrigo',1964,'George Marshall & Vittorio Sala',1,0,0,0),
 (176,'A Doppia Faccia',1969,'Riccardo Freda',1,0,0,0);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;


--
-- Definition of table `release`
--

DROP TABLE IF EXISTS `release`;
CREATE TABLE `release` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Format` varchar(45) default NULL,
  `Country` varchar(45) default NULL,
  `Film Id` int(10) unsigned NOT NULL,
  `Needs subs` tinyint(1) NOT NULL default '0',
  `Aka Id` int(10) unsigned default NULL,
  PRIMARY KEY  (`Id`),
  KEY `FK_Release_FILM` (`Film Id`),
  KEY `FK_Release_AKA` (`Aka Id`),
  CONSTRAINT `FK_Release_AKA` FOREIGN KEY (`Aka Id`) REFERENCES `aka` (`Id`),
  CONSTRAINT `FK_Release_FILM` FOREIGN KEY (`Film Id`) REFERENCES `film` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `release`
--

/*!40000 ALTER TABLE `release` DISABLE KEYS */;
INSERT INTO `release` (`Id`,`Format`,`Country`,`Film Id`,`Needs subs`,`Aka Id`) VALUES 
 (1,'DVD','Germany',8,0,NULL),
 (2,'DIVX',NULL,21,0,30),
 (3,'DIVX',NULL,66,0,29),
 (5,'DIVX',NULL,104,0,31),
 (6,'DIVX',NULL,46,0,NULL),
 (7,'DIVX',NULL,69,0,32),
 (8,'DIVX',NULL,148,0,NULL),
 (9,'DIVX',NULL,112,1,NULL),
 (10,'DIVX',NULL,89,0,NULL),
 (11,'DIVX',NULL,14,0,NULL),
 (12,'DIVX',NULL,10,0,NULL),
 (13,'DIVX',NULL,134,0,NULL),
 (14,'DIVX',NULL,30,0,33),
 (15,'DIVX','NL VfP release',20,0,28),
 (16,'DIVX',NULL,50,0,27),
 (17,'DIVX',NULL,166,0,34),
 (18,'DIVX',NULL,167,0,NULL),
 (19,'DIVX',NULL,168,0,NULL),
 (20,'DIVX',NULL,56,0,37),
 (21,'DIVX',NULL,154,0,NULL),
 (22,'DIVX',NULL,81,0,38);
/*!40000 ALTER TABLE `release` ENABLE KEYS */;


--
-- Definition of view `most_known_akas`
--

DROP TABLE IF EXISTS `most_known_akas`;
DROP VIEW IF EXISTS `most_known_akas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`Johan`@`%` SQL SECURITY DEFINER VIEW `most_known_akas` AS select `aka`.`Id` AS `Id`,`aka`.`Title` AS `Title`,`aka`.`Film_Id` AS `Film_Id`,`aka`.`Most Known Title` AS `Most Known Title` from `aka` where (`aka`.`Most Known Title` = 1);

--
-- Definition of view `my_releases`
--

DROP TABLE IF EXISTS `my_releases`;
DROP VIEW IF EXISTS `my_releases`;
CREATE ALGORITHM=UNDEFINED DEFINER=`Johan`@`%` SQL SECURITY DEFINER VIEW `my_releases` AS select `f`.`Title` AS `Orig Title`,`m`.`Title` AS `Most known as`,`f`.`Year` AS `Year`,`r`.`Format` AS `Format`,`r`.`Country` AS `Country`,`r`.`Needs subs` AS `Needs subs` from ((`release` `r` join `film` `f` on((`r`.`Film Id` = `f`.`Id`))) left join `most_known_akas` `m` on((`r`.`Film Id` = `m`.`Film_Id`))) order by `f`.`Title`;

--
-- Definition of view `seen`
--

DROP TABLE IF EXISTS `seen`;
DROP VIEW IF EXISTS `seen`;
CREATE ALGORITHM=UNDEFINED DEFINER=`Johan`@`%` SQL SECURITY DEFINER VIEW `seen` AS select `film`.`Title` AS `title`,`film`.`Year` AS `year`,`film`.`Director` AS `director` from `film` where (`film`.`Seen` = 1) order by `film`.`Year`,`film`.`Title`;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

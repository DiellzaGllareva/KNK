
DROP TABLE IF EXISTS Antaret;

CREATE TABLE Antaret (
  AntaretID INTEGER NOT NULL AUTO_INCREMENT,
  AntaretEmri VARCHAR(45) NOT NULL,
  AntaretMbiemri VARCHAR(45) NOT NULL,
  AntaretUser VARCHAR(45) NOT NULL,
  AntareFjalekalimi VARCHAR(45) NOT NULL,
  PRIMARY KEY (AntaretID),
  UNIQUE KEY AntaretID_UNIQUE (AntaretID),
  UNIQUE KEY AntaretUser (AntaretUser,AntareFjalekalimi)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

LOCK TABLES Antaret WRITE;

INSERT INTO Antaret VALUES (29,'diellza','gllareva','R+9hFlCtxDuEZfmcwNUFsg==','rcYwTly48N4QJfIxKrvOzg=='),
(32,'Elsa','Nishori','M7a05RXv5xTRzDpGo+o+hw==','M7a05RXv5xTRzDpGo+o+hw=='),
(36,'Elire','Raci','M4gmH0Tmke1icSk/wGMNQw==','M4gmH0Tmke1icSk/wGMNQw=='),
(37,'Ensare','Islami','0wo/a5oHxa+lyjSIs8IyBQ==','Sgx3baumNiSkHTvpUhdoMA==');
ALTER TABLE Antaret;
INSERT INTO Antaret VALUES(35,'Arita','Alidemaj','R+9uFlrtx+/EZfmcwNUFsg==','p5YwTly48N4QJfIlDSvOzg=='),
(40,'Alina','Fazliu','B/9hFlCklsuFR+mcwNUFab==','asleTly48N4QJfIxKrvOzg=='),
(42,'Andi','Hyseni','oPedw-yrxDuEZfmcwNUFsgoi','rcYwTly48FRTEfIxKrvOzg=='),
(45,'Arian','Emini','sD+hflgxDuEZfmcwPossgkk','r7ytRYTE8N4QJfIxKrvOzg==');
UNLOCK TABLES;

DROP TABLE IF EXISTS Asistentet;

CREATE TABLE Asistentet (
  AsistentiID INTEGER NOT NULL AUTO_INCREMENT,
  AsistentiEmri VARCHAR(45) NOT NULL,
  AsistentiMbiemri VARCHAR(45) NOT NULL,
  AsistentiKabineti VARCHAR(45) DEFAULT NULL,
  AsistentiEmaili VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (AsistentiID),
  UNIQUE KEY AsistentiID_UNIQUE (AsistentiID)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

LOCK TABLES Asistentet WRITE;
/*!40000 ALTER TABLE Asistentet DISABLE KEYS */;
INSERT INTO Asistentet VALUES (17,'Vigan','Abdurrahimi','718','viganabdurrahimi@uni-pr.edu'),
(32,'Vjosa','Shatri','476','');
ALTER table Asistentet;
INSERT INTO Asistentet VALUES
(10,'Edon','Gashi','711','edongashi@uni-pr.edu'),
(4,'Haxhi','Lajqi','712',''),
(6,'Dardan','Shabani','703','dardanshabani@uni-pr.edu');
/*!40000 ALTER TABLE Asistentet ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS Lenda;

CREATE TABLE Lenda (
  LendaID INTEGER NOT NULL AUTO_INCREMENT,
  LendaEmri VARCHAR(45) NOT NULL,
  LendaSemestri VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (LendaID),
  UNIQUE KEY LendaID_UNIQUE (LendaID),
  UNIQUE KEY LendaEmri (LendaEmri,LendaSemestri)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

LOCK TABLES Lenda WRITE;
/*!40000 ALTER TABLE Lenda DISABLE KEYS */;
INSERT INTO Lenda VALUES (12,'Arkitektura e Kompjuterve','4'),(33,'Baza e te Dhenave','3'),(20,'Elektronika','3'),(16,'Komunikimi Njeri Kompjuter','4'),(13,'Programimi ne Internet','4'),(35,'RRJETA KOMPJUTERIKE','4'),(18,'Siguria e te dhenave','4');
ALTER table Lenda;
INSERT INTO Lenda VALUES (17,'Matematika 3K','3'),(10,'Sinjale Dhe Sisteme','3'),(28,'Interneti','3'),(22,'POO','3'),(3,'Menaxhimi i Projekteve','4');
/*!40000 ALTER TABLE `tbllenda` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS Mesimi;

CREATE TABLE Mesimi (
  MesimiID INTEGER unsigned NOT NULL AUTO_INCREMENT,
  ProfID INTEGER NOT NULL,
  LendaID INTEGER NOT NULL,
  OrariDID INTEGER DEFAULT NULL,
  OrariOID INTEGER DEFAULT NULL,
  SallaID INTEGER DEFAULT NULL,
  PRIMARY KEY (MesimiID),
  UNIQUE KEY unique_index (OrariDID,OrariOID,SallaID),
  KEY SallaID_idx (OrariOID),
  KEY LendaID_idx (LendaID),
  KEY ProfID_idx (ProfID),
  KEY OrariDID_idx (OrariDID),
  KEY SallaID_idx1 (SallaID),
  CONSTRAINT LendaID FOREIGN KEY (LendaID) REFERENCES Lenda (LendaID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT OrariDID FOREIGN KEY (OrariDID) REFERENCES Oraridita (OrariDID) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT OrariOID FOREIGN KEY (OrariOID) REFERENCES Orariora (OrariOID) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT ProfID FOREIGN KEY (ProfID) REFERENCES Profesoret (ProfesoriID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT SallaID FOREIGN KEY (SallaID) REFERENCES Salla (SallaID) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmesimi`
--

LOCK TABLES Mesimi WRITE;
/*!40000 ALTER TABLE Mesimi DISABLE KEYS */;
INSERT INTO Mesimi VALUES (161,35,20,16,3,NULL),(163,39,33,13,3,NULL),(173,35,12,16,3,NULL),(176,38,35,14,3,12),(177,38,20,14,3,11),(179,38,20,13,5,10),(180,35,20,14,4,12),(181,35,20,14,4,9),(182,35,20,14,4,11);
ALTER table Mesimi;
INSERT INTO Mesimi VALUES (162,36,20,15,2,NULL),(164,36,16,17,1,NULL);
/*!40000 ALTER TABLE Mesimi ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmesimiasis`
--

DROP TABLE IF EXISTS Mesimiasis;
CREATE TABLE Mesimiasis (
  MesimiAID INTEGER unsigned NOT NULL AUTO_INCREMENT,
  AsistentiID INTEGER NOT NULL,
  LendaAID INTEGER NOT NULL,
  OrariAOID INTEGER DEFAULT NULL,
  OrariADID INTEGER DEFAULT NULL,
  SallaAID INTEGER DEFAULT NULL,
  PRIMARY KEY (MesimiAID),
  UNIQUE KEY OrariAOID (OrariAOID,OrariADID,SallaAID),
  KEY AsistentiID_idx (AsistentiID),
  KEY LendaID_idx (LendaAID),
  KEY OrariOID_idx (OrariAOID),
  KEY OrariADID_idx (OrariADID),
  KEY SallaAID_idx (SallaAID),
  CONSTRAINT AsistentiID FOREIGN KEY (AsistentiID) REFERENCES Asistentet (AsistentiID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT LendaAID FOREIGN KEY (LendaAID) REFERENCES Lenda (LendaID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT OrariADID FOREIGN KEY (OrariADID) REFERENCES Oraridita (OrariDID) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES Mesimiasis WRITE;
/*!40000 ALTER TABLE Mesimiasis DISABLE KEYS */;
/*!40000 ALTER TABLE Mesimiasis ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS Mesimiasis1;
CREATE TABLE Mesimiasis1 (
  MesimiAsis1 INTEGER NOT NULL AUTO_INCREMENT,
  AsistentiID1 INTEGER NOT NULL,
  LendaID1 INTEGER NOT NULL,
  OrariAOID1 INTEGER DEFAULT NULL,
  OrariADID1 INTEGER DEFAULT NULL,
  SallaAID1 INTEGER DEFAULT NULL,
  PRIMARY KEY (MesimiAsis1),
  KEY AsistentiID1_idx (AsistentiID1),
  KEY LendaID1_idx (LendaID1),
  KEY OrariAOID1_idx (OrariAOID1),
  KEY OrariADID1_idx (OrariADID1),
  KEY SallaAID1_idx (SallaAID1),
  CONSTRAINT AsistentiID1 FOREIGN KEY (AsistentiID1) REFERENCES Asistentet (AsistentiID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT LendaID1 FOREIGN KEY (LendaID1) REFERENCES Lenda (LendaID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT OrariADID1 FOREIGN KEY (OrariADID1) REFERENCES Oraridita (OrariDID) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT OrariAOID1 FOREIGN KEY (OrariAOID1) REFERENCES Orariora (OrariOID) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT SallaAID1 FOREIGN KEY (SallaAID1) REFERENCES Sallaasis (SallaAsisID) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

LOCK TABLES Mesimiasis1 WRITE;
/*!40000 ALTER TABLE Mesimiasis1 DISABLE KEYS */;
INSERT INTO Mesimiasis1 VALUES (54,32,12,3,16,1);
/*!40000 ALTER TABLE Mesimiasis1 ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS Oraridita;
CREATE TABLE Oraridita (
  OrariDID INTEGER NOT NULL AUTO_INCREMENT,
  OrariDita VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (OrariDID),
  UNIQUE KEY OrariDID_UNIQUE (OrariDID),
  UNIQUE KEY OrariDita_UNIQUE (OrariDita)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES Oraridita WRITE;
/*!40000 ALTER TABLE Oraridita DISABLE KEYS */;
INSERT INTO Oraridita VALUES (16,'Eenjte'),(13,'Ehene'),(14,'Emarte'),(15,'Emerkure'),(17,'Epremte'),(18,'Eshtune');
/*!40000 ALTER TABLE `tbloraridita` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS Orariora;

CREATE TABLE Orariora (
  OrariOID INTEGER NOT NULL AUTO_INCREMENT,
  OrariOra VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (OrariOID),
  UNIQUE KEY OrariOID_UNIQUE (OrariOID),
  UNIQUE KEY OrariOra_UNIQUE (OrariOra)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES Orariora WRITE;
/*!40000 ALTER TABLE Orariora DISABLE KEYS */;
INSERT INTO Orariora VALUES (3,'11:00-12:30'),(4,'13:00-14:30'),(5,'14:30-16:00'),(6,'16:00-17:30'),(7,'17:30-19:00'),(8,'19:00-20:00'),(1,'8:00-9:30'),(2,'9:30-11:00');
/*!40000 ALTER TABLE Orariora ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE Profesoret (
  ProfesoriID INTEGER NOT NULL AUTO_INCREMENT,
  ProfesoriEmri VARCHAR(45) NOT NULL,
  ProfesoriMbiemri VARCHAR(45) NOT NULL,
  ProfesoriKabineti VARCHAR(45) DEFAULT NULL,
  ProfesoriEmaili VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (ProfesoriID),
  UNIQUE KEY ProfesoriID_UNIQUE (ProfesoriID)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

LOCK TABLES Profesoret WRITE;
/*!40000 ALTER TABLE Profesoret DISABLE KEYS */;
INSERT INTO Profesoret VALUES (35,'Myzafere','Limani','617','mlimani@gmail.com'),(38,'Blerim','Rexha','712','blerimrexha@uni-pr.edu'),(39,'Lule','Ahmedi','718','luleahmedi@uni-pr.edu');
ALTER table Profesoret;
INSERT INTO Profesoret VALUES (36,'Isak','Shabani','701','isakshabani@uni-pr.edu'),(37,'Valon','Raca','713','valonraca@uni-pr.edu'),(40,'Qamil','Kabashi','612','qamilkabashi@uni-pr.edu');
/*!40000 ALTER TABLE Profesoret ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS Salla;
CREATE TABLE Salla (
  SallaID INTEGER NOT NULL AUTO_INCREMENT,
  SallaNR INTEGER  NOT NULL,
  SallaKati INTEGER DEFAULT NULL,
  PRIMARY KEY (SallaID),
  UNIQUE KEY SallaID_UNIQUE (SallaID),
  UNIQUE KEY SallaNR (SallaNR,SallaKati)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES Salla WRITE;
/*!40000 ALTER TABLE Salla DISABLE KEYS */;
INSERT INTO Salla VALUES (12,404,4),(9,420,4),(11,615,4),(10,626,4);
/*!40000 ALTER TABLE Salla ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS Sallaasis;
CREATE TABLE Sallaasis (
  SallaAsisID INTEGER NOT NULL AUTO_INCREMENT,
  SallaANR VARCHAR(45) NOT NULL,
  SallaAKati VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (SallaAsisID),
  UNIQUE KEY idtblsallaAsis_UNIQUE (SallaAsisID)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES Sallaasis WRITE;
/*!40000 ALTER TABLE Sallaasis DISABLE KEYS */;
INSERT INTO Sallaasis VALUES (1,'517','4'),(2,'513','5'),(3,'201','2'),(6,'514','4'),(7,'514','4');
/*!40000 ALTER TABLE Sallaasis ENABLE KEYS */;
UNLOCK TABLES;

create database projektiKNK;
use projektiKNK;

CREATE TABLE orari (
  id int(11) primary key,
  lenda varchar(35) DEFAULT NULL,
  ects int(11) DEFAULT NULL,
  profesori varchar(35) DEFAULT NULL,
  asistenti varchar(35) DEFAULT NULL,
  ldita varchar(35) DEFAULT NULL,
  lora varchar(35) DEFAULT NULL,
  lsalla int(11) DEFAULT NULL,
  udita varchar(35) DEFAULT NULL,
  usalla varchar(35) DEFAULT NULL,
  uora int(11) DEFAULT NULL,
  niveli varchar(35) DEFAULT NULL,
  departamenti varchar(35) DEFAULT NULL,
  semestri varchar(35) ,
  grupi varchar(35) DEFAULT NULL
  );

INSERT INTO orari (id, lenda, ects, profesori, asistenti, ldita, lora, lsalla, udita, usalla, uora, niveli, departamenti, semestri, grupi) 
VALUES (1, 'Sinjale dhe Sisteme', '5', 'Vjosa Shatri', 'Drilon Bunjaku', 'E hene', '08:00-10:30', '626', 'E marte', '310', '13:00-14:30', 'Bachelor', 'FIEK', 'III', '1'),
 (2, 'Elektronika', '5', 'Myzafere Limani', 'Qamil Kabashi', 'E enjte', '11:00-12:30', '626', 'E premte', '626', '08:00-09:30', 'Bachelor', 'FIEK', 'III', '1'), 
 (3, 'Matematika 3K', '5', 'Qefsere Doko Gjonbalaj', 'Blerta Selimaj', 'E premte', '10:30-12:00', '411', 'E marte', '415', '16:00-17:30', 'Bachelor', 'FIEK', 'III', '1'),
 (4, 'Baza e Te Dhenave', '5', 'Lule Ahmedi', 'Besmir Sejdiu', 'E hene', '10:30-12:00', '621', 'E merkure', '621', '17:30-19:00', 'Bachelor', 'FIEK', 'III', '1'),
 (5, 'Interneti', '5', 'Lule Ahmedi', 'Korab Rrmoku', 'E marte', '08:00-09:30', '626', 'E enjte', '611', '15:00-16:30', 'Bachelor', 'FIEK', 'III', '1'), 
 (6, 'Programimi i Orientuar ne Objekte', '5', 'Isak Shabani', 'Vigan Abdurrahmani', 'E merkure', '11:30-13:00', '626', 'E enjte', '611', '08:00-09:30', 'Bachelor', 'FIEK', 'III', '1'),
 (7, 'Komunikimi Njeri Kompjuter', '5', 'Isak Shabani', 'Vigan Abdurrahmani', 'E hene', '13:30-15:00', '621', 'E marte', '611', '18:30-20:00', 'Bachelor', 'FIEK', 'IV', '2'),
 (8, 'Rrjeta Kompjuterike', '5', 'Blerim Rexha', 'Haxhi Lajqi', 'E marte', '08:15-09:45', '621', 'E enjte', '626', '16:00-17:30', 'Bachelor', 'FIEK', 'IV', '2'), 
 (9, 'Siguria e Te Dhenave', '5', 'Blerim Rexha', 'Edon Gashi', 'E merkure', '08:15-09:45', '621', 'E merkure', '615', '11:30-13:00', 'Bachelor', 'FIEK', 'IV', '2'),
 (10, 'Arkitektura e Kompjutereve', '5', 'Valon Raca', 'Vlera Alimehaj', 'E enjte', '13:30-15:00', '621', 'E premte', '621', '13:30-15:00', 'Bachelor', 'FIEK', 'IV','2' ),
 (11, 'Programimi ne Internet,' , '5','Valon Raca','Dardan Shabani','E merkure','13:30-15:00','621','E enjte','621','09:30-11:00','Bachelor','FIEK','IV','2')
 ;
 
 create table users(
 id integer,
 emri varchar(35) NOT NULL,
 mbiemri varchar(35) NOT NULL,
 numriID bigint(20) NOT NULL,
password varchar(65) NOT NULL,
primary key (id)
 );
 
 INSERT INTO users(id,emri,mbiemri,numriID,password)
 VALUES
 (1,'Elsa','Nishori',180714100063,'c2a3b6d9b4c3a6cfbf11f579a6fc5f8b'),
 (2,'Elirë','Raçi',180714100106,'9d6141458d5c1f3610c55c39a07b3b0c'),
 (3,'Arita','Alidemaj',180714100054,'f45e3139088cf43772e9493929c460ab'),
 (4,'Alina','Fazliu',180714100052,'73794b26b37d6b7d89bb694f133adcac'),
 (5,'Diellza','Gllareva',180714100162,'c401855dc45b6a43fc3c1ebbf2d683e5'),
 (6,'Ensare','Islami',180714100078,'e7b8e8b6a2ce52372fd24fe4d4a110ac'),
 (7,'Andi','Hyseni',180714100012,'1d69ded7713f92f0f41ddfc0cdbcdb80'),
 (8,'Arian','Emini',180714100013,'d5fc89797625cec2f3220b77ff5b8d4a');

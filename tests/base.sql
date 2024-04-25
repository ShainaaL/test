CREATE TABLE `utilisateur` (
  `mailU` varchar(150),
  `mdpU` varchar(50),
  `pseudoU` varchar(50) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`mailU`, `mdpU`, `pseudoU`) VALUES
('alex.garat@gmail.com', '$1$zvN5hYSQSQDFUIQSdufUQSDFznHF5osT.', '@lex'),
('jj.soueix@gmail.com', '$1$zvN5hYMI$SDFGSDFGJqJSDJF.', 'drskott'),
('mathieu.capliez@gmail.com', 'seSzpoUAQgIl.', 'pich'),
('michel.garay@gmail.com', '$1$zvN5hYMI$VSatLQ6SDFGdsfgznHF5osT.', 'Mitch'),
('nicolas.harispe@gmail.com', '$1$zvNDSFQSdfqsDfQsdfsT.', 'Nico40'),
('test@bts.sio', 'seSzpoUAQgIl.', 'testeur SIO'),
('yann@lechambon.fr', 'sej6dETYl/ea.', 'yann');

CREATE TABLE Chansons(
   titre_chanson VARCHAR(100),
   idAL INT,
   PRIMARY KEY(titre_chanson)
);

CREATE TABLE playlists(
   idU INT,
   nom_playlist VARCHAR(100) NOT NULL,
   id_playlist INT,
   PRIMARY KEY(idU)
);

CREATE TABLE albums(
   idAL INT,
   titre VARCHAR(100) NOT NULL,
   id_artiste INT,
   annee_sortie INT,
   titre_chanson VARCHAR(100) NOT NULL,
   PRIMARY KEY(idAL),
   FOREIGN KEY(titre_chanson) REFERENCES Chansons(titre_chanson)
);

CREATE TABLE artistes(
   idA INT,
   nomA VARCHAR(100),
   descriptionA VARCHAR(50),
   idAL INT NOT NULL,
   PRIMARY KEY(idA),
   FOREIGN KEY(idAL) REFERENCES albums(idAL)
);

CREATE TABLE Ecouter(
   id INT,
   idA INT,
   PRIMARY KEY(id, idA),
   FOREIGN KEY(id) REFERENCES utilisateur(id),
   FOREIGN KEY(idA) REFERENCES artistes(idA)
);

CREATE TABLE Creer(
   id INT,
   idU INT,
   PRIMARY KEY(id, idU),
   FOREIGN KEY(id) REFERENCES utilisateur(id),
   FOREIGN KEY(idU) REFERENCES playlists(idU)
);

CREATE TABLE playlist_chansons(
   titre_chanson VARCHAR(100),
   idU INT,
   PRIMARY KEY(titre_chanson, idU),
   FOREIGN KEY(titre_chanson) REFERENCES Chansons(titre_chanson),
   FOREIGN KEY(idU) REFERENCES playlists(idU)
);

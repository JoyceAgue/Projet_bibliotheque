CREATE TABLE livre (
  id INT PRIMARY KEY AUTO_INCREMENT,
  titre VARCHAR(200) NOT NULL,
  auteur VARCHAR(100),
  disponible BOOLEAN DEFAULT TRUE
);

CREATE TABLE etudiant (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL
);

CREATE TABLE pret (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_livre INT NOT NULL,
  id_etudiant INT NOT NULL,
  date_pret DATE NOT NULL,
  date_retour DATE,
  FOREIGN KEY (id_livre) REFERENCES livre(id),
  FOREIGN KEY (id_etudiant) REFERENCES etudiant(id)
);
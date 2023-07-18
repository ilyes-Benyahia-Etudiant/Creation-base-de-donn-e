Scripts creation TABLES :

CREATE TABLE cinema (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    noms_cine VARCHAR(100),
    titre_film VARCHAR(100)
);


CREATE TABLE reservations (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    noms_cine VARCHAR(100),
    titre_film VARCHAR(100),
    Tarifs float,
    nom_client VARCHAR(100)
    
);
-

CREATE TABLE admin (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    utilisateurs VARCHAR(100),
    password VARCHAR(100),
    titre_film VARCHAR(100),

    --Relation entre titre_film et cinema
    FOREIGN KEY (titre_film) REFERENCES cinema (noms_cine)
);


Scripts Insertions des Données factices dans les TABLES :

INSERT INTO cinema (noms_cine, titre_film) VALUES ("cinema_1", "Millenium"),("cinema_2", "Snowden"),("cinema_3", "Imitation Game");
INSERT INTO reservations (noms_cine, titre_film, Tarifs, nom_client) VALUES ("cinema_1", "Millenium", "9.20€" "Jacques"),("cinema_2", "Snowden", "7.60€", "Elen"),("cinema_3", "Imitation Game", "5.90€" "Jules");
INSERT INTO admin (utilisateurs, titre_film) VALUES ("A_user-1", "1234*", "Millenium", "cinema_1"),("A_user-2", "1234*", "Snowden", "cinema_2"),("A_user-3", "1234*", "Imitation Game", "cinema_3");
-- Le mot de passe sera crypté par la fonction MD5 ou sha256, ou sha1
digest('1234*', 'MD5')


Modifications TABLES par Admin_utilisateurs :
update cinema set titre_film = 'Millenium' where noms_cine = 'cinema_3';
update cinema set titre_film = 'Snowden' where noms_cine = 'cinema_2';
update cinema set titre_film = 'Imitation Game' where noms_cine = 'cinema_1';


Sauvegarde BD :

mysqldump -u root -p complexes_cinema > dump.sql
entrer pwd : 1234
entrée
Visualisation des requetes Sql qui permet de restaurer toutes la base de données
Exporter requetes de la Bd dans un fichier.sql
mysqldump -u root -p complexes_cinema > dump.sql
entrer pwd : 1234



Restauration BD :
mysqldump -u root -p complexes_cinema < dump.sql
entrer pwd : 1234
Actualisation BD



Securisation de la BD :

Definir les roles Administrateur
Hash du mot de passe par la fonction :
SELECT SHA1('utilisateurs');
SELECT MD5('utilisateurs');

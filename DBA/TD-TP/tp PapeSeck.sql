-- Table client
CREATE TABLE client (
    id_client INTEGER,
    nom VARCHAR(10),
    prenom VARCHAR(10),
    adresse VARCHAR(10),
    CONSTRAINT pknumcli PRIMARY KEY (id_client)
);

-- Table commande
CREATE TABLE commande (
    numcom INTEGER,
    dateCom DATE,
    id_client INTEGER,
    CONSTRAINT pk_commande PRIMARY KEY (numcom),
    CONSTRAINT fk_client_commande FOREIGN KEY (id_client)
    REFERENCES client(id_client)
);

-- Table produit
CREATE TABLE produit (
    idProduit INTEGER,
    nomProduit VARCHAR(20),
    CONSTRAINT pk_produit PRIMARY KEY (idProduit)
);

-- Table ligne_com
CREATE TABLE ligne_com (
    numcom INTEGER,
    idProduit INTEGER,
    quantite INTEGER,
    CONSTRAINT pk_ligne_com PRIMARY KEY (numcom, idProduit),
    CONSTRAINT fk_commande FOREIGN KEY (numcom) REFERENCES commande(numcom),
    CONSTRAINT fk_produit FOREIGN KEY (idProduit) REFERENCES produit(idProduit)
);

-- Insertion des clients avec des noms, prénoms et adresses sénégalaises
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (1, 'Diouf', 'Ousmane', 'Dakar');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (2, 'Sow', 'Aissatou', 'Thiès');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (3, 'Niang', 'Mamadou', 'Saint-Louis');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (4, 'Fall', 'Khadim', 'Kaolack');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (5, 'Seck', 'Mariama', 'Ziguinchor');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (6, 'Ba', 'Ibrahime', 'Touba');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (7, 'Tall', 'Seynabou', 'Mbour');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (8, 'Sy', 'Oumar', 'Fatick');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (9, 'Wade', 'Aminata', 'Kaffrine');
INSERT INTO client (id_client, nom, prenom, adresse) VALUES (10, 'Cissé', 'El Hadj', 'Dioffior');

-- Insertion des commandes
INSERT INTO commande (numcom, dateCom, id_client) VALUES (1, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 1);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (2, TO_DATE('2024-12-02', 'YYYY-MM-DD'), 2);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (3, TO_DATE('2024-12-03', 'YYYY-MM-DD'), 3);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (4, TO_DATE('2024-12-04', 'YYYY-MM-DD'), 4);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (5, TO_DATE('2024-12-05', 'YYYY-MM-DD'), 5);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (6, TO_DATE('2024-12-06', 'YYYY-MM-DD'), 6);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (7, TO_DATE('2024-12-07', 'YYYY-MM-DD'), 7);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (8, TO_DATE('2024-12-08', 'YYYY-MM-DD'), 8);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (9, TO_DATE('2024-12-09', 'YYYY-MM-DD'), 9);
INSERT INTO commande (numcom, dateCom, id_client) VALUES (10, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 10);

-- Insertion des produits
INSERT INTO produit (idProduit, nomProduit) VALUES (1, 'Ordinateur');
INSERT INTO produit (idProduit, nomProduit) VALUES (2, 'Clavier');
INSERT INTO produit (idProduit, nomProduit) VALUES (3, 'Souris');
INSERT INTO produit (idProduit, nomProduit) VALUES (4, 'Ecran');
INSERT INTO produit (idProduit, nomProduit) VALUES (5, 'Imprimante');
INSERT INTO produit (idProduit, nomProduit) VALUES (6, 'Scanner');
INSERT INTO produit (idProduit, nomProduit) VALUES (7, 'Routeur');
INSERT INTO produit (idProduit, nomProduit) VALUES (8, 'Switch');
INSERT INTO produit (idProduit, nomProduit) VALUES (9, 'Câble RJ45');
INSERT INTO produit (idProduit, nomProduit) VALUES (10, 'Disque SSD');

-- Insertion des lignes de commande avec les produits et quantités
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (1, 1, 2);  -- Commande 1, produit 1 (Ordinateur), quantité 2
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (1, 2, 1);  -- Commande 1, produit 2 (Clavier), quantité 1
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (2, 3, 1);  -- Commande 2, produit 3 (Souris), quantité 1
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (2, 4, 2);  -- Commande 2, produit 4 (Ecran), quantité 2
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (3, 5, 1);  -- Commande 3, produit 5 (Imprimante), quantité 1
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (3, 6, 3);  -- Commande 3, produit 6 (Scanner), quantité 3
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (4, 7, 2);  -- Commande 4, produit 7 (Routeur), quantité 2
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (4, 8, 1);  -- Commande 4, produit 8 (Switch), quantité 1
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (5, 9, 5);  -- Commande 5, produit 9 (Câble RJ45), quantité 5
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (5, 10, 2); -- Commande 5, produit 10 (Disque SSD), quantité 2


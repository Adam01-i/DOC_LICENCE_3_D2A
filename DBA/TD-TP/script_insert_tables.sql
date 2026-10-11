INSERT INTO client (numcl, nom, prenom, adresse) VALUES (1, 'Dupont', 'Jean', '1 rue de Paris');
INSERT INTO client (numcl, nom, prenom, adresse) VALUES (2, 'Martin', 'Sophie', '2 avenue de Lyon');
INSERT INTO client (numcl, nom, prenom, adresse) VALUES (3, 'Bernard', 'Luc', '3 boulevard de Marseille');

INSERT INTO produit (idProduit, nomProduit) VALUES (1, 'Produit A');
INSERT INTO produit (idProduit, nomProduit) VALUES (2, 'Produit B');
INSERT INTO produit (idProduit, nomProduit) VALUES (3, 'Produit C');

INSERT INTO commande (numcom, dateCom, numcl) VALUES (1, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 1);
INSERT INTO commande (numcom, dateCom, numcl) VALUES (2, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 2);
INSERT INTO commande (numcom, dateCom, numcl) VALUES (3, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 1);

INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (1, 1, 2);
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (1, 2, 1);
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (2, 1, 3);
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (3, 2, 4);
INSERT INTO ligne_com (numcom, idProduit, quantite) VALUES (3, 3, 2);

//idClient //nomClient // prenomClient //adrClient
insert into client values
(01,'Diop','nene','Bambey');
insert into client values
(22,'Dia','fatou','tamba');
insert into client values
(03,'Diagne','Aly','Dakar');
insert into client values
(44,'ka','Aminata','kolda');
insert into client values
(05,'Seck','Adama','Rufisque');

table commande
//idCom //dateCom //idClient
insert into commande values
(01, TO_DATE('2021-01-20', 'YYYY-MM-DD'), 22);
insert into commande values
(02, TO_DATE('2023-06-07', 'YYYY-MM-DD'), 05);
insert into commande values
(03, TO_DATE('2021-04-23', 'YYYY-MM-DD'), 22);
insert into commande values
(04, TO_DATE('2023-06-08', 'YYYY-MM-DD'), 05);
insert into commande values
(05, TO_DATE('2022-12-02', 'YYYY-MM-DD'), 44);
insert into commande values
(06, TO_DATE('20242-12-11', 'YYYY-MM-DD'), 05);

//table produit
//idProduit //nomProduit
insert into produit values
(01, 'Bissap', 1100);
insert into produit values
(22, 'Bouye', 1200);
insert into produit values
(03, 'Ditakh', 1300);
insert into produit values
(44, 'Dakkar', 1400);
insert into produit values
(05, 'Moringa', 1500);

//table LigneCom
//idcom //idProduit //qteCom //numeroLigne
insert into ligneCom values
(01, 44, 100, 1);
insert into ligneCom values
(02, 22, 200, 1);
insert into ligneCom values
(03, 44, 300, 1);
insert into ligneCom values
(04, 22, 400, 1);
insert into ligneCom values
(05, 44, 500, 1);
insert into ligneCom values
(06, 05, 100, 1);
insert into ligneCom values
(06, 05, 100, 2);
insert into ligneCom values
(06, 22, 400, 2);
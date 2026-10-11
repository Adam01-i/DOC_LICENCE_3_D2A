drop table ligne_com;
drop table produit;
drop table commande;
drop table client;

create table client(
    idClient integer,
    nomClient varchar(20),
    prenomClient varchar(20),
    adrClient varchar(30),
    constraint pk_client primary key(idClient)
);

create table commande(
    idCom integer,
    dateCom date,
    idClient integer,
    constraint pk_commande primary key(idCom),
    constraint fk_client_commande foreign key(idClient) references client(idClient)
);

create table produit (
    idProduit integer,
    nomProduit varchar(20),
    constraint pk_produit primary key(idProduit)
);

create table ligneCom(
    idCom integer,
    idProduit integer,
    qteCom integer,
    numeroLigne integer,
    constraint pk_ligne_com primary key(idCom,idProduit,numeroLigne),
    constraint fk_commande foreign key(idCom) references commande(idCom),
    constraint fk_produit foreign key(idProduit) references produit(idProduit)
);
DROP TABLE IF EXISTS commandes;
DROP TABLE IF EXISTS fournisseurs;
DROP TABLE IF EXISTS produits;


create table fournisseurs
( fno integer,
  nom text,
  ville text,
  constraint pk_fournisseurs primary key(fno)
);

create table produits
( pno integer,
  libelle text,
  prix integer,
  constraint pk_produits primary key(pno)
);

create table commandes
( cno integer,
  pno integer,
  fno integer,
  qute integer,
  constraint pk_commandes primary key(cno),
  constraint fk_produits foreign key(pno)
  	     references produits(pno)
	     on delete restrict
	     on update cascade,
  constraint fk_fournisseurs foreign key(fno)
  	     references fournisseurs(fno)
	     on delete set null
	     on update cascade
);

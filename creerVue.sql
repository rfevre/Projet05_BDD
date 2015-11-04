-- FEVRE Rémy --

DROP VIEW IF EXISTS V_Produits;
DROP VIEW IF EXISTS V_SyntheseFournisseur;

CREATE VIEW V_Produits
AS SELECT *
FROM produits
WHERE prix BETWEEN 300 AND 500;

CREATE VIEW V_SyntheseFournisseur
AS SELECT f.nom,p.libelle,c.fno,c.cno,sum(c.qute) as qute
FROM commandes as c, fournisseurs as f, produits as p
group by f.fno,c.cno,f.nom,p.libelle,p.pno
having c.fno = f.fno
and c.pno = p.pno;



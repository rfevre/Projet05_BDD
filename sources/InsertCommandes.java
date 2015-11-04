public class InsertCommandes {
    public static void main (String[] args) {
	int nbrCommandes = 100;
	int quantite=1;
	int produits=1;
	int cno = 1;
	
	if (args.length == 1)
	    nbrCommandes = Integer.parseInt(args[0]);

	for (int i=1;i<=1000;i++) {
	    for (int j=1;j<=nbrCommandes;j++) {
		quantite= (int)( Math.random()*100+1);
		produits= (int)( Math.random()*10000+1);
		System.out.println(cno+";"+produits+";"+i+";"+quantite);
		cno++;
	    }
	}
       
    }
}

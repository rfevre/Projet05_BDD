public class InsertProduits {
    public static void main (String[] args) {
	int nbrProduits = 10000;
	int prix=0;
	
	if (args.length == 1)
	    nbrProduits = Integer.parseInt(args[0]);

	for (int i=1;i<=nbrProduits;i++) {
	    prix = (int)( Math.random()*400)+200;
	    System.out.println(i+";"+"'Gateau"+i+"';"+prix);
	}
    }
}

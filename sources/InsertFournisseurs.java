public class InsertFournisseurs {
    public static void main (String[] args) {
	int nbrFournisseurs = 1000;
	
	if (args.length == 1)
	    nbrFournisseurs = Integer.parseInt(args[0]);

	for (int i=1;i<=nbrFournisseurs;i++)
	    System.out.println(i+";"+"'MamieGateaux"+i+"';"+"'Lille'");
    }
}

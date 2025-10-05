public class contaFilter {
    public static void filtraContasAtivas(){
        List<Account> todasAsContas = [SELECT Name, vlocity_cmt__Status__c FROM Account];

        List<String> contasAtivas = new List<String>();

        for (Account conta : todasAsContas){
            if(conta.vlocity_cmt__Status__c == 'Ativo'){
                contasAtivas.add(conta.Name);
            }
        }

        system.debug('Contas ativas: '+ contasAtivas);
    }
}
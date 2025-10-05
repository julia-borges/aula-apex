public class contaFilter {
    public static void filtraContasAtivas(){
        List<Account> todasAsContas = [SELECT Name, Status__c FROM Account];

        List<String> contasAtivas = new List<String>();

        for (Account conta : todasAsContas){
            if(conta.status__c == 'Ativo'){
                contasAtivas.add(conta.Name);
            }
        }

        system.debug('Contas ativas: '+ contasAtivas);
    }
}
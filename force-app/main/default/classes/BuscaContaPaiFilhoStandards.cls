public with sharing class BuscaContaPaiFilhoStandards {
    public static List<Account> buscaContaPaiFilho(String inicioNomeConta){
        List<Account> contasComFilhos = [Select Name, Id, (SELECT Name FROM Contacts) FROM Account WHERE Name like :inicioNomeConta];
        
        return contasComFilhos;

    }
}

// List<Account> contas = BuscaContaPaiFilhoStandards.buscaContaPaiFilho('Acme');
//System.debug('Contato '+contas[0].Contacts);


/* for(integer i=0; i < contas.size(); i++){
    for(Contact contato:contas[i].Contacts){
        System.debug('Nome da Conta: '+ contas[i].Name + ' - ' + 'Contato '+ contato.Name);
    }
} */

/* for(integer i=0; i < contas.size(); i++){
        System.debug('Nome da Conta: '+ contas[i].Name);

    for(Contact contato:contas[i].Contacts){
        System.debug('Nome do Contato relacionado: '+ contato.Name);
    }
} */

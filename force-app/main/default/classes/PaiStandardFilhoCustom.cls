public with sharing class PaiStandardFilhoCustom {
    public PaiStandardFilhoCustom() {
        List<Account> contas = [SELECT Name, (SELECT Name, email__c FROM Filiais__r) FROM Account];

        for(Integer i=0; i < contas.size(); i++){
            for(Integer j=0; j < contas[i].Filiais__r.size(); j++){
                System.debug('Nome da Conta: '+ contas[i].Name + ' - '+ 'Nome do Contato: '+ contas[i].Filiais__r[j].Name);
            }
        }

    }
}
//só de instanciar:
//PaiStandardFilhoCustom psfc = new PaiStandardFilhoCustom();
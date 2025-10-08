public with sharing class BuscaPaiPorFilhoCustom {
    public static void BuscaPaiPorFilhoCustom(String nomeDaConta){
        List<Filial__c> filiais = [SELECT Name, Conta__r.Name FROM Filial__c WHERE Conta__r.Name = :nomeDaConta];
        System.debug(filiais);
    }
}
//BuscaPaiPorFilhoCustom.BuscaPaiPorFilhoCustom('Acme');
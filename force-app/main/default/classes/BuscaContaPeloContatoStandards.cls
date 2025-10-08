public with sharing class BuscaContaPeloContatoStandards {
    public static void buscaContaPorFilho(Id idDaConta){
        List<Contact> contatos = [SELECT Name, Account.Name FROM Contact WHERE Account.Id = :idDaConta];
        System.debug(contatos);
    }
}
//BuscaContaPeloContatoStandards.buscaContaPorFilho('001KZ00000DJdjsYAD'); 
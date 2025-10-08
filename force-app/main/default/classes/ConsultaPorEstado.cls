public with sharing class ConsultaPorEstado {
    public static List<Account> consultaPorEstado(String estado){
        return [Select Name, BillingCountry, BillingCity FROM Account WHERE BillingState = :estado];
        
    }

    public static void exibeConsulta(List<Account> listaDeContas){
        for(Account conta:listaDeContas){
            System.debug('Nome: '+ conta.Name);
        }
    }
}
//Chamando a classe com o método consultaPorEstado e guardando em contas e depois exibe com o outro métodod
//(execute pelo Anonymous):

/* 
List<Account> contas = ConsultaPorEstado.consultaPorEstado('CA');
ConsultaPorEstado.exibeConsulta(contas); 
*/
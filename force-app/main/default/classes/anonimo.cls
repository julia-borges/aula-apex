/* 
//*? Array ou Vetor
String [] vetor = new String[10];
vetor[0] = 'abacate';
vetor[1] = 'manga';
vetor[2] = 'manga';
vetor[3] = 'manga';
vetor[4] = 'manga';
vetor[5] = 'manga';
vetor[6] = 'manga';
vetor[7] = 'manga';
vetor[8] = 'manga';
vetor[9] = 'manga';
vetor[10] = 'manga';


Loops:
while
do while
for
for each

 iteração

Integer i = 0;
while(i<50){
    System.debug('i vale: '+ i);
    i++;
}

Integer i = 10; 
checar depois
do{ 
    System.debug('i vale: '+ i);
    i++;
}while(i<10)


for(integer i =0;i <10;i++ ){
    System.debug('i vale: '+ i);
}



List<String> lista = new List<String>();
lista.add('Julia');
lista.add('Kharylin');
lista.set(0,'Maria');
System.debug(lista[0] + ' , '+lista.get(1));




List<List<Integer>> numeros = new List<List<Integer>>();
List<Integer> linha0 = new List<Integer>();
linha0.add(10);
linha0.add(20);


List<Integer> linha1 = new List<Integer>();
linha1.add(30);
linha1.add(40);

numeros.add(linha0);
numeros.add(linha1);
System.debug(numeros);


for(integer i =0;i<linha0.size(); i++){
    system.debug(linha0.get(i));
}
*/


//*? Set - Conjuntos:
//*? Relemebrando lista:
/* List<Integer> ls = new List<Integer>();

ls.add(1);
ls.add(3);
ls.add(9);
ls.add(5);
ls.add(0);
ls.add(2);
ls.add(11);
ls.add(5);
ls.add(0);
System.debug('List: '+ls);
*/


/* Set<Integer> setN = new Set<Integer>(ls);
System.debug('Set: '+setN);


Set<String> setStrings = new Set<String>();
setStrings.add('A');
setStrings.add('E');
setStrings.add('Z');
setStrings.add('B');
setStrings.add('I');
setStrings.add('C');
System.debug('Set Strings: '+setStrings);


List<String> listaPalavras = new List<String>{'Macaco', 'Cachorro','Gato','Zebra','Pássaro'};
System.debug('List palavras: '+listaPalavras);

Set<String> conjunto = new Set<String>{'Elefante','Girafa','Cavalo'};
System.debug('Set palavras: '+conjunto);

Boolean setAlterado = conjunto.addAll(listaPalavras);
System.debug(setAlterado? 'Conjunto alterado' : 'Conjunto não alterado' );
System.debug(conjunto);

Boolean temCachorro = conjunto.contains('Cachorro');
System.debug(temCachorro? 'Tem cachorro' : 'Não tem cachorro');


//*? Iterando sobre o SET
Set<String> conjunto = new Set<String>{'Macaco', 'Cachorro','Gato','Zebra','Pássaro'};
for(String elementos:conjunto){
    system.debug(elementos);

}

//*? Remover sobre o SET
Set<String> conjunto = new Set<String>{'Macaco', 'Cachorro','Gato','Zebra','Pássaro'};
String animal = 'Macaco';

if(conjunto.contains(animal)){
    conjunto.remove(animal);
    System.debug('Animal removido com sucesso, novo conjunto '+conjunto);
}else{
    System.debug('Nao existe o animal '+ animal+ 'no conjunto');
}
 

//*? Map
Map <String, String> mapa = new Map<String, String>{'nome'=> 'Marcos', 'sobrenome'=> 'Santos', 'idade' => '23'};
mapa.put('end', 'Rua Apa');
system.debug(mapa);

Map<String, Account> mapaSObject = new Map<String, Account>{'conta1'=>new Account(Name='Empresa 1'), 'conta2'=>new Account(Name='Empresa 2')};
mapaSObject.put('conta3', new Account (Name='Empresa 3'));
System.debug('AKI 1 '+mapaSObject);

Account acc = new Account(Name='Empresa 4', Phone='19123456789');
mapaSObject.put('conta3', acc);
System.debug(mapaSObject.get('conta3').Phone);

System.debug('mapaSObject '+mapaSObject);

Set<String> chaves = mapaSObject.keySet();
System.debug('Conjunto das chaves do mapa (set) '+chaves);

for(String a:chaves){
    System.debug('Chave: '+a +' Valor: '+ mapaSObject.get(a));
}

//*? Remove pela chave
mapaSObject.remove('conta3');
System.debug('Mapa com a remoção da conta3'+mapaSObject);

*/

/* 
//*? Populando o objeto custom por aqui:

Filial__c filial = new Filial__c();
filial.Name = 'Alameda Borges';
filial.Email__c = 'alameda-borges@gmail.com';
filial.Conta__c = '001KZ00000DJdjsYAD';


Filial__c filial = new Filial__c();
filial.Name = 'Alameda Lorena - Filial 3';
filial.Email__c = 'alameda-lorena@gmail.com';
filial.Conta__c = '001KZ00000DJdjsYAD';
insert filial;

//*? Ele sempre vai trazer o ID mesmo q vc não coloque na query:
List<Account> listaContaEstadoCA = new List<Account>( [SELECT Name, BillingCountry, BillingCity FROM Account WHERE BillingState = 'CA']);

for(integer i=0; i < listaContaEstadoCA.size(); i++){
    System.debug('Nome: '+ listaContaEstadoCA[i].Name + ' - Cidade: '+ listaContaEstadoCA[i].BillingCity+ ' - País: '+ listaContaEstadoCA[i].BillingCountry); 
}

for(Account conta:listaContaEstadoCA){
    System.debug('Nome: '+ conta.Name);
} 
*/

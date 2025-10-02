
// //Array ou Vetor
// String [] vetor = new String[10];
// vetor[0] = 'abacate';
// vetor[1] = 'manga';
// vetor[2] = 'manga';
// vetor[3] = 'manga';
// vetor[4] = 'manga';
// vetor[5] = 'manga';
// vetor[6] = 'manga';
// vetor[7] = 'manga';
// vetor[8] = 'manga';
// vetor[9] = 'manga';
// vetor[10] = 'manga';


// //Loops:
// //while
// //do while
// //for
// //for each

// //iteração

// Integer i = 0;
// while(i<50){
//     System.debug('i vale: '+ i);
//     i++;
// }

// Integer i = 10; 
// //checar depois
// do{ 
//     System.debug('i vale: '+ i);
//     i++;
// }while(i<10)


// for(integer i =0;i <10;i++ ){
//     System.debug('i vale: '+ i);
// }



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







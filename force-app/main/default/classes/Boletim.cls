public class Boletim {
	private Decimal n1;
    private Decimal n2;
    private Decimal n3;
    private Decimal n4;
    private Decimal media;
    
    //construtor
    public Boletim(Decimal n1,Decimal n2,Decimal n3,Decimal n4){
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
        this.n4 = n4;
    }
 
   //metodo q calcula media (sem retorno)
   //argumento está sendo passado pelo construtor
    private void calculaMedia(){
        this.media = (n1+n2+n3+n4)/4;
        }
    
    public String retornaEstado(){
        this.calculaMedia();
        if(this.media >= 5){
            return 'Aprovado com média de: '+ this.media;
                }else{
                    return 'Reprovado com média de: '+ this.media;
                }
    }
    
    
    
}
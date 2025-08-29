public class Nota {
	private Decimal nota1;
    private Decimal nota2;
    private Decimal nota3;
    private Decimal nota4;
    private Decimal media;
    
    //construtor para obrigar a informar as notas já na instância - boa prática
    public Nota(Decimal nota1, Decimal nota2, Decimal nota3, Decimal nota4){
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.nota4 = nota4;
    }
    
    
    //método para calcular a média, sem retorno
    private void calculaMedia(){
        this.media = (nota1+nota2+nota3+nota4)/4;
    }
    
    //retornar pro usuario:
    public String resultado(){
        this.calculaMedia();
        if(this.media <= 3){
            return 'Reprovado com média de: '+ this.media;
        }else if((this.media > 3) && (this.media < 5)){
            return 'Em recuperação com média de: '+ this.media;
        }else{
            return 'Aprovado com média de: '+ this.media;
        }
    }
}
public class Funcionario {
    //atributos
    private Decimal salarioBruto;
    private Decimal horasExtras;
    private Decimal salarioLiquido;
 	private Decimal totalDescontos;
    
        
    //construtor
    public Funcionario(Decimal salarioB, Decimal horasExtras){
        this.salarioBruto = salarioB;
        this.horasExtras = horasExtras;
    }
    
    //método de calculo
    private void calculaSalarioLiquido(){
        Decimal descontoInss = this.salarioBruto * 0.08; // 4000 * 0.08 = 320
        Decimal descontoIr = (this.salarioBruto > 3000)? this.salarioBruto * 0.05 : 0.00;

        this.totalDescontos = descontoInss + descontoIr;
        this.salarioLiquido = this.salarioBruto + (this.horasExtras * 25) - totalDescontos; //horas 200
    }
    
    
    //método de retorno   
    public String retornaResumo(){
        calculaSalarioLiquido();
        
        if(this.salarioLiquido >= 4000){
            return 'Salário alto: R$'+ this.salarioLiquido.setScale(2,RoundingMode.HALF_UP);
        }else if((this.salarioLiquido >= 2000) && (this.salarioLiquido <= 3999)){
            return 'Salário médio: R$'+ this.salarioLiquido.setScale(2,RoundingMode.HALF_UP);
        }else{
            return 'Salário baixo: R$'+ this.salarioLiquido.setScale(2,RoundingMode.HALF_UP);
        }
    }
    
    
}
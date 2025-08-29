public class ClasseComStatic {
	public static Integer idade=0;
    
    public ClasseComStatic(){
        idade += 1;
    }
    
    public void exibeIdade(){
        system.debug(idade);
    }
    
    public void incrementaIdade(Integer ida){
        idade = idade + ida;
    }
    
    public static void incrementaIdadeStatic(Integer i){
        idade = idade + i;
    }
    
}
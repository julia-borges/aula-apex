import { LightningElement } from 'lwc';

export default class TarefaManager extends LightningElement {
    listaTarefas = [];
    novaTarefa = '';
    cont = 1;
    listaVazia = true;

get listaVazia(){
    return this.listaTarefas.length === 0;
}


    atualizaTarefa(event){
        this.novaTarefa = event.target.value;
    }

    adicionaTarefa(){
        // verifica se é vazio se sim interrompe a funcao
        if(this.novaTarefa.trim() === '') return;

        this.listaTarefas = [
            ...this.listaTarefas,
            {
                id: this.cont++,
                nome: this.novaTarefa
            }
        ]
        this.novaTarefa= '';
    }

}
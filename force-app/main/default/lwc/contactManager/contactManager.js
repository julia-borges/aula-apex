import { LightningElement } from 'lwc';

export default class ContactManager extends LightningElement {
    nome = '';

    guardar(){
        this.nome = event.target.value
    }
}
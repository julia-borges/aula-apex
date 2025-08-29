import { LightningElement } from 'lwc';
import pubsub from 'vlocity_cmt/pubsub';
import { OmniscriptBaseMixin } from 'vlocity_cmt/omniscriptBaseMixin';
import OmniscriptLookup from 'vlocity_cmt/omniscriptLookup';
export default class accountLookupLWC extends OmniscriptBaseMixin(OmniscriptLookup) {
    selectOption(event) {
        let attr = event.target.getAttribute('data-option-index');
        const inputIndex = parseInt(attr, 10);
        this.setSelected(inputIndex).then(() => {
            pubsub.fire("newAccountSelected", 'data', { "AccountId": this.lookupValue });
        });
        this.hideOptions();
    }
}
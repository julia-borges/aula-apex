import { LightningElement, api } from 'lwc';
import { OmniscriptBaseMixin } from 'vlocity_cmt/omniscriptBaseMixin';
import { OmniscriptActionCommonUtil } from 'vlocity_cmt/omniscriptActionUtils';
import pubsub from 'vlocity_cmt/pubsub';
export default class caseCommentDataTableLWC extends OmniscriptBaseMixin(LightningElement) {
    caseId;
    connectedCallback() {
        this.caseId = this.omniJsonData.SelectedCaseId;
    }
}
import { LightningElement } from 'lwc';
import  display  from '@salesforce/apex/MyClass.display';

export default class ExamComponent extends LightningElement {
    country = 'Australia';
    display = display();

}
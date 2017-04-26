/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class Extender {
    global Extender() {

    }
    global virtual void afterAdd(SObject cloned) {

    }
    global virtual void afterClone(SObject cloned) {

    }
    global virtual void afterSave() {

    }
    global virtual void afterSearch() {

    }
    global virtual SkyEditor2.Extender.WizardControl doBack(String id) {
        return null;
    }
    global virtual SkyEditor2.Extender.WizardControl doNext(String id) {
        return null;
    }
    global virtual void init() {

    }
    global virtual void preAdd(SObject cloned) {

    }
    global virtual void preSave() {

    }
    global virtual void preSearch() {

    }
global enum TransferType {MANUAL, SKY_VISUAL_EDITOR}
global class WizardControl {
    global SkyEditor2.Extender.TransferType control {
        get;
        set;
    }
    global Integer pageTransfer {
        get;
        set;
    }
    global WizardControl() {

    }
}
}

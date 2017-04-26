/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class ListItemHolder {
    global Integer addCount {
        get;
        set;
    }
    global List<SObject> deleteRecords {
        get;
    }
    global SkyEditor2.Extender extender {
        get;
        set;
    }
    global String hiddenValue {
        get;
        set;
    }
    global Boolean ignoredOnSave {
        get;
        set;
    }
    global List<SkyEditor2.ListItem> items {
        get;
    }
    global Boolean queryRelatedEvent {
        get;
        set;
    }
    global List<SObject> records {
        get;
    }
    global SkyEditor2.RecordTypeSelector recordTypeSelector {
        get;
    }
    global Boolean selected {
        get;
        set;
    }
    global Schema.SObjectType sobjectType {
        get;
    }
    global ListItemHolder(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {

    }
    global virtual SkyEditor2.ListItem add(SObject data, Boolean isReturn) {
        return null;
    }
    global virtual void add() {

    }
    global void add(SObject data) {

    }
    global virtual void clear() {

    }
    global virtual void cloneRows() {

    }
    global virtual SkyEditor2.ListItem create(SObject data) {
        return null;
    }
    global virtual void deleteSelectedItems() {

    }
    global virtual void importByJSON() {

    }
    global virtual void importByJSON(Object records) {

    }
    global virtual void importByJSON(List<SkyEditor2.JSONObject.value> records) {

    }
    global virtual void importByJSONtoOppLineItem(Object records) {

    }
    global virtual void importByJSONtoOppLineItem(List<SkyEditor2.JSONObject.value> records) {

    }
    global virtual Boolean isRelationalTable() {
        return null;
    }
    global virtual void listAllClear() {

    }
    global void reIndex() {

    }
    global void remove(Integer index) {

    }
    global virtual void remove(Integer index, Boolean isDelete) {

    }
    global void set(SObject data, Integer index) {

    }
}

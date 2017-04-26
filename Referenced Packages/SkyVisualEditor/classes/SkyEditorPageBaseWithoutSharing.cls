/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class SkyEditorPageBaseWithoutSharing {
    global Integer currentPageNumber {
        get;
        set;
    }
    global String customAddButtonLabel {
        get;
    }
    global String customCancelButtonLabel {
        get;
    }
    global String customCloneButtonLabel {
        get;
    }
    global String customDeleteButtonLabel {
        get;
    }
    global String customDeleteRowButtonLabel {
        get;
    }
    global String customDeleteWarningLabel {
        get;
    }
    global String customEditButtonLabel {
        get;
    }
    global String customLoadCriteriaButtonLabel {
        get;
    }
    global String customRegistCriteriaButtonLabel {
        get;
    }
    global String customReportButtonLabel {
        get;
    }
    global String customSaveButtonLabel {
        get;
    }
    global String customSaveWarningLabel {
        get;
    }
    global String customSearchBlockTitle {
        get;
    }
    global String customSearchButtonLabel {
        get;
    }
    global String customSearchSectionTitle {
        get;
    }
    global String deleteTransitionControl {
        get;
        set;
    }
    global SkyEditor2__SkyEditorDummy__c dummy {
        get;
    }
    global SkyEditor2__SkyEditorDummy__c DummyDatePicker {
        get;
        set;
    }
    global String editTransitionControl {
        get;
        set;
    }
    global Map<String,SkyEditor2.ListItemHolder> eventListItemHolders {
        get;
        set;
    }
    global Boolean execInitialSearch {
        get;
        set;
    }
    global Set<Id> existIds {
        get;
        set;
    }
    global SkyEditor2.Extender extender;
    global SkyEditor2.HiddenFieldsMap hiddenFieldsMap;
    global Boolean hidePageBody {
        get;
        set;
    }
    global Boolean isPageInit {
        get;
    }
    global SkyEditor2.Label label;
    global Integer lastPageNumber {
        get;
        set;
    }
    global Map<String,SkyEditor2.ListItemHolder> listItemHolders {
        get;
        set;
    }
    global SkyEditor2.Query mainQuery {
        get;
        set;
    }
    global SObject mainRecord {
        get;
        set;
    }
    global Schema.SObjectType mainSObjectType;
    global SkyEditor2.LayoutMode mode {
        get;
        set;
    }
    global Boolean p_applyHtmlTag {
        get;
        set;
    }
    global Boolean p_cache {
        get;
        set;
    }
    global String p_contentType {
        get;
        set;
    }
    global String p_docType {
        get;
        set;
    }
    global Integer p_expires {
        get;
        set;
    }
    global String p_height {
        get;
        set;
    }
    global Boolean p_isPdf {
        get;
        set;
    }
    global String p_language {
        get;
        set;
    }
    global String p_pdfMargin {
        get;
        set;
    }
    global String p_pdfOrientation {
        get;
        set;
    }
    global String p_pdfPageSize {
        get;
        set;
    }
    global Boolean p_rendered {
        get;
        set;
    }
    global Boolean p_setup {
        get;
        set;
    }
    global Boolean p_showChat {
        get;
        set;
    }
    global Boolean p_showHeader {
        get;
        set;
    }
    global Boolean p_sidebar {
        get;
        set;
    }
    global Boolean p_standardStylesheets {
        get;
        set;
    }
    global String p_width {
        get;
        set;
    }
    global Boolean p_wizard {
        get;
        set;
    }
    global Map<Integer,String> pagesMap {
        get;
        set;
    }
    global String pdfStyleString {
        get;
    }
    global Map<String,SkyEditor2.Query> queryMap {
        get;
        set;
    }
    global Boolean queryRelatedEvent {
        get;
        set;
    }
    global Map<String,Id> recordTypeIdMap {
        get;
        set;
    }
    global String registTransitionControl {
        get;
        set;
    }
    global Map<String,String> relationFields {
        get;
        set;
    }
    global String renderAs {
        get;
    }
    global String rowCount {
        get;
    }
    global String rowCountPrefix {
        get;
    }
    global String rowCountSuffix {
        get;
    }
    global Boolean searchCompleteFlag {
        get;
    }
    global String stringWhereClause {
        get;
    }
    global String sve_detailPageName {
        get;
        set;
    }
    global Boolean sve_showDeleteCancel {
        get;
        set;
    }
    global String userLanguage {
        get;
    }
    global SkyEditorPageBaseWithoutSharing() {

    }
    global SkyEditorPageBaseWithoutSharing(ApexPages.StandardController controller) {

    }
    global virtual void addInheritParameter(String field, String param) {

    }
    global virtual void addListener(SkyEditor2.ActionType type, SkyEditor2.ActionListener listener) {

    }
    global System.PageReference deleteRecord() {
        return null;
    }
    global virtual System.PageReference doBack() {
        return null;
    }
    global virtual System.PageReference doNext() {
        return null;
    }
    global virtual System.PageReference doSave() {
        return null;
    }
    global virtual void doSearch() {

    }
    global String getErrorMessages() {
        return null;
    }
    global String getInfoMessages() {
        return null;
    }
    global virtual SkyEditor2.Label getLabel() {
        return null;
    }
    global List<System.SelectOption> getOperatorOptions(String sobjectName, String fieldName) {
        return null;
    }
    global SObject init() {
        return null;
    }
    global virtual void initSearch() {

    }
    global virtual System.PageReference jumpPageNumber(Integer num) {
        return null;
    }
    global virtual void presetSystemParams() {

    }
    global virtual void registRelatedList(String relationshipName, String listId) {

    }
    global virtual void saveOldValues() {

    }
    global virtual void setApiVersion(Decimal apiVersion) {

    }
    global virtual void setPageReferenceFactory(SkyEditor2.PageReferenceFactory.Implementation impl) {

    }
}

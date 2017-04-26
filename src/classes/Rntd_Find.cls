global with sharing class Rntd_Find extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Rented_Formula__c record {get{return (Rented_Formula__c)mainRecord;}}
	public Canvas Component15 {get; set;}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Rntd_Find(ApexPages.StandardController controller) {
		super(controller);

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Rented_Formula__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Rented_Formula__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutFree; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = false;
			p_sidebar = false;
			init();
			
			if (record.Id == null) {
				
				saveOldValues();
				
			}

			
			CanvasSave canvasSave = new CanvasSave();
			Component15 = new Canvas(record, 'Component15');
			addListener(SkyEditor2.ActionType.Save, new CanvasSaveRegister(Component15, canvasSave, this));
			addListener(SkyEditor2.ActionType.Save, canvasSave);
			
		}  catch (SkyEditor2.Errors.FieldNotFoundException e) {
			fieldNotFound(e);
		} catch (SkyEditor2.Errors.RecordNotFoundException e) {
			recordNotFound(e);
		} catch (SkyEditor2.ExtenderException e) {
			e.setMessagesToPage();
		}
	}
	

	@TestVisible
		private void sObjectNotFound(SkyEditor2.Errors.SObjectNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}
	@TestVisible
		private void fieldNotFound(SkyEditor2.Errors.FieldNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}
	@TestVisible
		private void recordNotFound(SkyEditor2.Errors.RecordNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}


	with sharing  class CanvasSave implements SkyEditor2.ActionListener {
		Attachment[] records;
		public CanvasSave() {
			records = new List<Attachment>();
		}
		public void addAttachment(Attachment attachment) {
			records.add(attachment);
		}
		public void run() {
			Attachment[] saveRecords = records;
			records = new List<Attachment>();
			upsert saveRecords;
		}
	}

	with sharing  class CanvasSaveRegister implements SkyEditor2.ActionListener {
		Canvas canvas;
		CanvasSave save;
		Rntd_Find parentHolder;
		public CanvasSaveRegister(Canvas canvas, CanvasSave save, Rntd_Find parentHolder) {
			this.canvas = canvas;
			this.save = save;
			this.parentHolder = parentHolder;
		}
		public void run() {
			if (canvas.edited) {
				Attachment att = canvas.getAttachment();
				if (att == null) {
					return;
				}
				if (att.ParentId == null) {
					att.ParentId = parentHolder.record.Id;
				}
				save.addAttachment(att);
			}
		}
	}

	public with sharing  class Canvas {
									 
		private String name;
		public Boolean flg { get; set; }
		public transient String text { get; set; }
		public Boolean edited { get; private set; }
		private Attachment attachment;

		public Canvas(SObject parent, String name) {
			this.name = name;
			edited = false;
			if (parent.Id != null) {
				flg = false;
				List<Attachment> atts = [SELECT Id,name,ParentId,Body,ContentType,SystemModstamp FROM Attachment WHERE ParentId = :parent.Id AND Name = :name];
				if (atts.size() > 0) {
					attachment = atts[0];
					text = '/servlet/servlet.FileDownload?file=' + attachment.Id + '&modif=' + attachment.SystemModstamp.getTime();
				}
			}
			flg = attachment == null;
		}

		public void toggle() {
			if(flg){
				if(text != null && EncodingUtil.base64Decode(text.split(',')[1]).size() > 5 * 1024 * 1024){
					ApexPages.addMessages(new CanvasException(SkyEditor2.Messages.CANVAS_SIZE_OVER));
					return;
				}			  
				flg = false;
				edited = true;
			}else{				   
				flg = true;
			}
		}

		public Attachment getAttachment() {
			if (text == null || text == '') {
				return null;
			}
			Blob body = EncodingUtil.base64Decode(text.split(',')[1]);
			if (attachment != null) {
				attachment.Body = body;
				return attachment;
			} else {
				return new Attachment(
					Name = name,
					Body = body,
					ContentType = 'image/png'
				);
			}
		}

	}	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}
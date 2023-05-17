public class DownloadEvalKeyReportController {
    public List<EvalKeyList.Data> selectedEvalKeyApproveRequestData = new List<EvalKeyList.Data>();
    public String downloadJS {get;set;}
    public String message {get; set;}
    public boolean isSuccessMessage {get; set;}
    public boolean isErrorMessage {get; set;}
    
    public DownloadEvalKeyReportController(ApexPages.StandardController controller) {
        
    }
    
    public DownloadEvalKeyReportController(EvalKeyRequestList controller) {
       selectedEvalKeyApproveRequestData = controller.totalEvalKeyRequestList; 
    }
    
    public PageReference downloadEvalKeyReport() {
       System.debug('result') ;
        message = 'set';
        isSuccessMessage = true;
       /*try{
           String base64String = '';
            
           Http http = new Http();
           HttpRequest request = new HttpRequest();
           request.setEndpoint('https://4mm8l3dp9j.execute-api.us-east-2.amazonaws.com/dev/download_eval_key_report?key_id=54rtfgbgh&report_month=April&report_tpe=detailed');
           request.setHeader('x-api-key', 'uwWAsFn2YdaZlQIMUMpqr6HSpRT84Ps15wbqbyfh');
           request.setMethod('GET');
           request.setHeader('Content-Type', 'application/json');
           HttpResponse response = http.send(request);
           Map<String, Object> responseBody = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    
           responseMessage = (String) responseBody.get('message');
           String reportName = (String) responseBody.get('report_name');
           Blob b = (Blob) responseBody.get('data') ;
           base64String = EncodingUtil.base64Encode(b);
           String json = response.getBody();
           //responseMessage = json;
            if (base64String == '') {
            	responseMessage = 'file Not Found';
        	} else {
               downloadJS ='<script> download("'+base64String+'","'+reportName+'",".csv"); </script>';
        	}
           return null;
        } catch(Exception e){
            responseMessage = e.getMessage();
            return null;
            ===
        }*/
        return null;
    }

}
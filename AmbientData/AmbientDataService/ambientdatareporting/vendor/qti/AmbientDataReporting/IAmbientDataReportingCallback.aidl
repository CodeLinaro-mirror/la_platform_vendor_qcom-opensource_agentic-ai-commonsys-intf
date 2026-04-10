package vendor.qti.AmbientDataReporting;

import vendor.qti.AmbientDataReporting.AmbientDataReport;

/**
 * Interface for receiving asynchronous sensor callbacks from the service.
 */

@VintfStability

interface IAmbientDataReportingCallback {

    /**
     * Called by service to provide outcome of processing a reuquest.
     * Always be called for a request and conforms to JSON schema for response.
     *
     * @param resposne: JSON string containing Notification sessoion ID upon
     *                  successful subscription, otherwise failure with details.    
     */
    void onResult(String reponse);
  
    /**
     * Called to report sensor data event on subscribed notification sessions.
     * 
     * @param AmbientDataReport: sensor data report.
     */
    void onAmbientDataEvent(in AmbientDataReport AmbientDataReport);
    
    /**
     * Called to notify subscribed clients when asysnchonous error occurs.
     *
     * @param error: Response structure with JSON string containing details of error
     */
    void onError(String error);
}

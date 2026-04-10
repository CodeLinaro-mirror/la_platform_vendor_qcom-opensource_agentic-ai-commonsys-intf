package vendor.qti.AmbientDataControl;

import vendor.qti.AmbientDataControl.AmbientDataControlResponse;

/**
 * Interface for receiving asynchronous updates for requests from the service.
 */
@VintfStability

interface IAmbientDataControlCallback {

    /**
     * Always called by service to provide outcome of processing.and conforms to JSON schema
     * for response. 
     * @param result JSON string containing result of operation on a control request.
     *        The result indicates either a success or failure, with details in case of failure.
     */
    void onResult(in AmbientDataControlResponse result);

    /**
     * Called to report an event (log, wakeup)
     * @param event JSON string containing asynchronous notifications. Notifications will be of type
     *        Wakeup or Logging
     */
    void notifyEvent(in AmbientDataControlResponse event);

    /**
     * Called when an asynchornous error event occurs in service.
     * @param error structure with JSON string containing details of error
     */
    void onError(in AmbientDataControlResponse error);

}

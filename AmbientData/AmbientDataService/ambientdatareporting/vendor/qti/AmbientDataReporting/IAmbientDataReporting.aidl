package vendor.qti.AmbientDataReporting;

import android.os.ParcelFileDescriptor;
import vendor.qti.AmbientDataReporting.IAmbientDataReportingCallback;
import vendor.qti.AmbientDataReporting.AmbientDataReport;

/**
 * Sensor Data reporting Service interface to handle requests
 */
@VintfStability

interface IAmbientDataReporting {
    /**
     * Subscription request handler for clients to register for lifelog sensor data notifications.
     * A subscription is associated with a 'notification session id', on which data reporting occurs 
     * 
     * @param reportingConfig: JSON request with reporting config.
     * @param callback:        Client callback to indicate reception status, response with
     *                         notification session id and subsequent asynchronous notification events.
     * returns a String with transaction Id specified in the request
     */
    boolean subscribeAmbientDataReporting(String reportingConfig, IAmbientDataReportingCallback callback);

    /**
     * UnSubscribe request handler for clients to remove a subscribed lifelog sensor data notification session.
     * Subscribed 'notification session id' must be specified in the request, to unsubscribe the session.
     *
     * @param reportingSessionId: JSON request with reporting session id to be unsubscribed.
     * @param callback:           Client callback to indicate reception status, and unsubscribe response.
     * returns a String with transaction Id specified in the request
     */
    boolean unsubscribeAmbientDataReporting(String reportingSessionId, IAmbientDataReportingCallback callback);
}

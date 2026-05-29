/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

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
     *
     * @param subscribeRequest: JSON request with subscription config.
     * @param callback: Client callback to indicate reception status, response with
     *                  notification session id and subsequent asynchronous notification events.
     * returns boolean with status of reception by service. TRUE if requets was accepted, FALSE otherwise.
     */
    boolean subscribeAmbientDataReporting(String subscribeRequest, IAmbientDataReportingCallback callback);

    /**
     * UnSubscribe request handler for clients to remove a subscribed lifelog sensor data notification session.
     * Subscribed 'notification session id' must be specified in the request, to unsubscribe the session.
     *
     * @param unsubscribeRequest: JSON request with unsubscription config.
     * @param callback: Client callback to indicate reception status, and unsubscribe response.
     * returns a boolean with status of reception by service. TRUE if requets was accepted, FALSE otherwise.
     */
    boolean unsubscribeAmbientDataReporting(String unsubscribeRequest, IAmbientDataReportingCallback callback);
}

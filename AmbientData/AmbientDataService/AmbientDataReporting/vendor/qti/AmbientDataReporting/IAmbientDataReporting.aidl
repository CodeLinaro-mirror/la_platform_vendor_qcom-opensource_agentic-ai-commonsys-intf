/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.AmbientDataReporting;

import android.os.ParcelFileDescriptor;
import vendor.qti.AmbientDataReporting.IAmbientDataReportingCallback;
import vendor.qti.AmbientDataReporting.AmbientDataReport;

/**
 * Ambient Data reporting Service interface to handle requests
 */
@VintfStability

interface IAmbientDataReporting {
    /**
     * Subscription request handler for clients to register for life log sensor data notifications.
     * A subscription is associated with a control path'session id', on which data reporting occurs
     *
     * @param reportingConfig: JSON request with reporting config.
     * @param callback:        Client callback to indicate response of subscription, error
     *                         and subsequent asynchronous notification events.
     * returns a boolean status, true if success or false in case of failure.
     */
    boolean subscribeAmbientDataReporting(String reportingConfig, IAmbientDataReportingCallback callback);

   /**
    * Remove a subscribed life log sensor data notification session.
    * a subscribed 'session id' must be specified in the request, to unsubscribe the data
    * notification on that session.
    *
    * @param reportingSessionId: JSON request with reporting session id to be unsubscribed.
    * @param callback:           Client callback to indicate reception status, and unsubscribe response.
    * returns a boolean status, true if success or false in case of failure.
    */
    boolean unsubscribeAmbientDataReporting(String reportingSessionId, IAmbientDataReportingCallback callback);
}

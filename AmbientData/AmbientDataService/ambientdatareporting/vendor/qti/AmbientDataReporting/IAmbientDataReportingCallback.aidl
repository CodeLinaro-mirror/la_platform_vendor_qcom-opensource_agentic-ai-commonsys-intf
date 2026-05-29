/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.AmbientDataReporting;

import vendor.qti.AmbientDataReporting.AmbientDataReport;

/**
 * Interface for receiving asynchronous sensor callbacks from the service.
 */

@VintfStability

interface IAmbientDataReportingCallback {

    /**
     * Called by service to provide outcome of processing a request.
     * Always be called for a request and conforms to JSON schema for response.
     *
     * @param resposne: structure containing JSON RPC response.
     */
    void onResult(in AmbientDataReport response);

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
    void onError(in AmbientDataReport error);
}

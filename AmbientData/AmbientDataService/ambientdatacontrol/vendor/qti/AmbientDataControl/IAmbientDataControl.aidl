/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.AmbientDataControl;

import vendor.qti.AmbientDataControl.AmbientDataControlRequest;
import vendor.qti.AmbientDataControl.IAmbientDataControlCallback;

/**
 * Sensor Data Collection Service interface to handle control requests
 */
@VintfStability
interface IAmbientDataControl {
    /**
      * Handler for control requests for lifelog sensor
      * @param request structure with JSON-RPC request string and optional shared memory descriptor.
      * @param callback Callback interface for async responses
      * @return boolean value true if request is accepted for processing, false
      * otherwise. Reason for failure will be reported in callback
      */
    boolean handleControlRequest(in AmbientDataControlRequest request, IAmbientDataControlCallback callback);
}

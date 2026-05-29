/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.AmbientDataControl;
import vendor.qti.AmbientDataControl.AdditionalControlData;

/**
 * Structure with response for control message.
 */
@VintfStability
parcelable AmbientDataControlResponse {
    /**
     * Response sent as JSON string.
     */
    String response;

    /**
     * Shared memory with additional data which cannot be included in JSON 'response'.
     * JSON message in'response' also explicitly indicates allocation and presence of data in the
     * additionalResponseData, otherwise the additionalResponseData is not used.
     */
    @nullable AdditionalControlData[] additionalResponseData;
}
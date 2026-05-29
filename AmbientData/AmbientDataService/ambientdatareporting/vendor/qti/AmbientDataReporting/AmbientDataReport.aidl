/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.AmbientDataReporting;
import vendor.qti.AmbientDataReporting.AdditionalReportingData;
/**
 * Sensor data notification structure
 */
@VintfStability
parcelable AmbientDataReport {
    /**
     * Notification message as JSON string,
     * must follow structuring defined by JSON schema
     * The JSON notification explicitly indicates the notification type
     * 1> 'lifelog_transcripts': follows JSON Schema for 'lifelog transcript'
     * 2> 'user_attributes': follows JSON schema for 'user atributes data'
     */
    String jsonNotification;
    /**
     * Additional reporting data which cannot be included in JSON data reporting.
     * When required JSON RPC report in `jsonNotification` explicitly indicates
     * presence of additional data by using array of AdditionalReportingData in the
     * structure. If no additional data is required, then AdditionalReportingData
     * is not used
     *
     */
    @nullable AdditionalReportingData[] additionalReportData;
}
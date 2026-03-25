/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.AmbientDataReporting;
import android.os.ParcelFileDescriptor;

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
     * 2> 'user_attributes': follows JSON schema for 'user attributes data'
     */
    String jsonNotification;
    /**
     * Shared memory with additional data which cannot be included in JSON message.
     * 'jsonNotification' has JSON RPC message which explicitly indicates allocation
     * and presence of data in the shared memory file descriptor, otherwise the
     * descriptor is not allocated.
     *
     * When the file descriptor is allocated, the "data_format" key indicates
     * the format of data stored in file descriptor.
     *
     */
    @nullable ParcelFileDescriptor fd;
}

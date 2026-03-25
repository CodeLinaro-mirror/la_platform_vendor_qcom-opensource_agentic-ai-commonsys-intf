/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import vendor.qti.coreif.ResponseDataDescriptor;

@VintfStability
parcelable CoreInterfaceResponse {

    /**
     * JSON-RPC 2.0 response string.
     * Covers success, error, and notification shapes.
     */
    String jsonResponse;

    /**
     * Optional array of named file descriptors carrying large response data.
     * Each entry is identified by configName referenced in jsonResponse.
     */
    @nullable ResponseDataDescriptor[] responseData;
}

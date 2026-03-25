/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import vendor.qti.coreif.RequestDataDescriptor;

@VintfStability
parcelable CoreInterfaceRequest {

    /**
     * JSON-RPC 2.0 request string.
     * Must conform to the defined JSON schema.
     */
    String jsonRequest;

    /**
     * Optional array of named file descriptors carrying data
     * too large for jsonRequest (embeddings, tensors, etc.).
     * Each entry is identified by configName referenced in jsonRequest.
     */
    @nullable RequestDataDescriptor[] requestData;
}

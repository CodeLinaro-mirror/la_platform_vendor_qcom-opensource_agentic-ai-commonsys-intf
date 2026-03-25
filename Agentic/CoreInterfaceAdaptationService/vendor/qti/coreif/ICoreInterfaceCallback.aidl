/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import vendor.qti.coreif.CoreInterfaceResponse;

@VintfStability
interface ICoreInterfaceCallback {

    /**
     * Final response — success or structured error.
     * Always called exactly once per accepted request.
     * jsonResponse conforms to JSON-RPC 2.0 response schema.
     */
    void onResult(in CoreInterfaceResponse result);

    /**
     * Asynchronous error event (service-side fault, not a request error).
     * jsonResponse conforms to JSON-RPC 2.0 error schema.
     */
    void onError(in CoreInterfaceResponse error);

    /**
     * Generic async event — progress, logging, notifications.
     * jsonResponse carries a JSON-RPC 2.0 notification shape:
     * { "jsonrpc":"2.0", "method":"notifications/...", "params":{...} }
     */
    void onGenericEvent(in CoreInterfaceResponse event);
}

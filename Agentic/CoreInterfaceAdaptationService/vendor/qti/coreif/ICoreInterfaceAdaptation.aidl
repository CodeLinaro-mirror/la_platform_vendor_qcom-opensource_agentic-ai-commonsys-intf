/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import vendor.qti.coreif.CoreInterfaceRequest;
import vendor.qti.coreif.ICoreInterfaceCallback;

@VintfStability
interface ICoreInterfaceAdaptation {
    /**
     * Submit a request to the Core Interface Adaptation Service.
     *
     * @param request  Structured JSON-RPC request + optional fd array.
     * @param callback Binder callback for async result delivery.
     * @return         true  — request accepted, callback will fire.
     *                 false — request rejected (overload, bad input),
     *                         callback will NOT fire.
     */
    boolean handleRequest(
        in CoreInterfaceRequest request,
        ICoreInterfaceCallback callback
    );
}

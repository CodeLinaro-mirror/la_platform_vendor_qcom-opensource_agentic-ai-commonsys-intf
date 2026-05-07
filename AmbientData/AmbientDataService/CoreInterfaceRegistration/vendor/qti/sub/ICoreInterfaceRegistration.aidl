/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.sub;

import vendor.qti.coreif.ICoreInterfaceAdaptation;

@VintfStability
interface ICoreInterfaceRegistration {

    /**
     * Called once by Native AIDL Server at startup
     * to hand over its binder reference to vendor side
     */
    void registerCoreInterface(
        in ICoreInterfaceAdaptation coreInterface
    );

    /**
     * Called on system shutdown or service restart
     */
    void unregisterCoreInterface();
}

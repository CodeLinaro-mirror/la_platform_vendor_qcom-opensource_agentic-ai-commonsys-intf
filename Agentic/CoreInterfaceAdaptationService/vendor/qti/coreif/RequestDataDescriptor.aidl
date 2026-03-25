/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable RequestDataDescriptor {

    /** Name matching the fd reference used in jsonRequest */
    String dataDescriptorId;

    @Backing(type="int") @VintfStability
    enum DataFormat {
        BYTE_ARRAY  = 0,
        JSON_STRING = 1
    }

    DataFormat dataFormat;
    ParcelFileDescriptor fd;
}

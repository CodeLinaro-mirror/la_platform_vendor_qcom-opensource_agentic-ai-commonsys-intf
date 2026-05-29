/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable RequestDataDescriptor {

    /** JSON request explicity indcates the name associated with file descriptor whcih has data.
      *  dataDescriptorName will match the name idnicated in JSON request identifying the Fiel descriptor*/
    String dataDescriptorName;

    @Backing(type="int")
    enum DataFormat {
        BYTE_ARRAY  = 0,
        JSON_STRING = 1
    }

    DataFormat dataFormat;
    ParcelFileDescriptor fd;
}

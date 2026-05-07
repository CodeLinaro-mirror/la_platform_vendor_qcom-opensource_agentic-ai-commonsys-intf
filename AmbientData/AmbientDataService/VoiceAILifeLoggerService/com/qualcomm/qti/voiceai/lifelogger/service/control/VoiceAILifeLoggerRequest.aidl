/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package com.qualcomm.qti.voiceai.lifelogger.service.control;

import android.os.ParcelFileDescriptor;
import com.qualcomm.qti.voiceai.lifelogger.service.control.VoiceAIConfigFileDescriptor;

@VintfStability
parcelable VoiceAILifeLoggerRequest {
    /**
     * VoiceAILifeLogger request message as JSON, 
     * must follow structuring defined by JSON schema
     */
    String request;

    /**
     * Shared memory with additional data which cannot be included in 'jsonRequest'.
     * 'jsonRequest' also explicitly indicates allocation and presence of data in the
     * shared memory file descriptor, otherwise the descriptor is not allocated.
     * When allocated 'jsonRequest' explicitly indicates the format of data.
     * 
     *  When the Shared memory file descriptor is allocated, the data types supported is
     * 1> "byte[]" : referred to as "BYTE_STREAM" holding a JSON String with predefined schema.
     */
    @nullable VoiceAIConfigFileDescriptor[] controlData;
}

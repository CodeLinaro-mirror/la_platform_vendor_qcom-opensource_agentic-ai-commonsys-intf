/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package com.qualcomm.qti.voiceai.lifelogger.service.control;

import com.qualcomm.qti.voiceai.lifelogger.service.control.VoiceAILifeLoggerData;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable VoiceAILifeLoggerResponse {
    /**
     * Response sent as JSON RPC string.
     */
    String response;

    /**
     * Additional data which cannot be included in JSON message string is provided in voiceAiLoggerData.
     * JSON message in 'response' also explicitly indicates allocation and presence of additional data.
     *  In such case, shared memory file descriptors and their identitiy are provided in voiceAiLoggerData
     * array, otherwise, otehrwise  voiceAiLoggerData is not used. When used, receiver shall match the DataDescriptor
      * identity obatined from JSON RPC message and the dataDescriptorName provided in voiceAiLoggerData to
      * before reading shared parcelable file descriptor.
     */
    @nullable VoiceAILifeLoggerData[] voiceAiLoggerData;
}

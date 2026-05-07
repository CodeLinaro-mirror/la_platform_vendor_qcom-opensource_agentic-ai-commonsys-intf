/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package com.qualcomm.qti.voiceai.lifelogger.service.control;

import com.qualcomm.qti.voiceai.lifelogger.service.control.VoiceAILifeLoggerRequest;
import com.qualcomm.qti.voiceai.lifelogger.service.control.IVoiceAILifeLoggerServiceCallback;

@VintfStability
interface IVoiceAILifeLoggerService {
    /**
     * Handler for control requests for VoiceAILifeLogger
     * @param request structure with JSON-RPC request string and optional shared memory descriptor.
     * @param callback Callback interface for async responses
     * returns a String with transaction Id specified in the request
     */
    boolean handleLifelogRequest(in VoiceAILifeLoggerRequest Request, IVoiceAILifeLoggerServiceCallback callback);
}

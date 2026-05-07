/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package com.qualcomm.qti.voiceai.lifelogger.service.control;

import com.qualcomm.qti.voiceai.lifelogger.service.control.VoiceAILifeLoggerResponse;

@VintfStability
interface IVoiceAILifeLoggerServiceCallback {
    /**
     * Called by service to provide outcome of processing.
     * Always be called for a request and conforms to JSON schema for response. 
     * @param result JSON string containing result of operation on the request.
     *        The result indicates either a success or failure, with details in case of failure.
     */
    void onResult(in VoiceAILifeLoggerResponse result);

    /**
     * Called to report an event 
     * @param event JSON string containing asynchronous notifications. Notifications will be of type
     *        wakeup evnet 
     */
    void notifyEvent(in VoiceAILifeLoggerResponse event);

    /**
     * Called to report an transcripts data 
     * @param data JSON string containing asynchronous notifications. Notifications will be of type
     *        transcripiton generated
     */
    void notifyData(in VoiceAILifeLoggerResponse data);

    /**
     * Called when an error occurs during request processing
     * @param error Response structure with JSON string containing details of error
     */
    void onError(String error);
}

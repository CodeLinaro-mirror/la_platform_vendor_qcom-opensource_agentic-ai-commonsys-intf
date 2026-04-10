package com.qualcomm.qti.voiceai.lifelogger.service.control;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable VoiceAILifeLoggerResponse {
    /**
     * Response sent as JSON string.
     */
    String response;

    /**
     * Shared memory with additional data which can be transcription json file or short memory json file
     */
    @nullable ParcelFileDescriptor pfd;
}

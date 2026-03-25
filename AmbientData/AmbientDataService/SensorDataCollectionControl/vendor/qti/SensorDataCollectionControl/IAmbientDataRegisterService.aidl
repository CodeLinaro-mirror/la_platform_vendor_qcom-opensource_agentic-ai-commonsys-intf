/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
package vendor.qti.SensorDataCollectionControl;

import com.qualcomm.qti.voiceai.lifelogger.service.control.IVoiceAILifeLoggerService;

@VintfStability
interface IAmbientDataRegisterService {
    /**
     * Register IVoiceAILifeLoggerService to DataCollectionService,
     * so DataCollectionService can call VoiceAILifeLoggerService
     * @param IVoiceAILifeLoggerService interface.
     */
    boolean registerVoiceAILifeLoggerService(in IVoiceAILifeLoggerService service);

    /**
     * Unregister IVoiceAILifeLoggerService from DataCollectionService,
     * @param IVoiceAILifeLoggerService interface.
     */
    boolean unregisterVoiceAILifeLoggerService();
}

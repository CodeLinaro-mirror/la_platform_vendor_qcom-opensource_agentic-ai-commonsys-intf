package com.qualcomm.qti.voiceai.lifelogger.service.control;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable VoiceAIConfigFileDescriptor {
    /* A name assigned to file descriptor, used for mapping
     * with indeitificcation provided in JSON RPC message */
    String configName;
  
    /* Supported Format of data stored in the file descriptor */
    @Backing(type="int") @VintfStability
    enum DataFormat {
        /**
        * Data is stored as byte stream
        */
        BYTE_STREAM = 0,

        /**
        * Data is stored as JSON string
        */
        JSON_STRING = 1
    }
  
    /**
     * Format of data present in the file descriptor.
     */
    DataFormat dataFormat;

    /**
     * Parceleable file descriptor with data, the type of data
     * will be specified in*/
    ParcelFileDescriptor fd;
}

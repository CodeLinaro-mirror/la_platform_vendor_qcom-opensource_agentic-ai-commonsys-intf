/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package com.qualcomm.qti.voiceai.lifelogger.service.control;

import android.os.ParcelFileDescriptor;

/**
 * Structure to hold additioanl data sent from Voice AI response.
 */

@VintfStability
parcelable VoiceAILifeLoggerData {
  /* A name assigned with this file descriptor, will match the data descriptor
   *  identification provided in JSON RPC message */
  String dataDescriptorName;

   @Backing(type="int")
  /* Supported Format of data stored in the file descriptor */
  enum DataFormat{
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
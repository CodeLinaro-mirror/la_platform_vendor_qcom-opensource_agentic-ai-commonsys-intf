<<<<<<< HEAD
/*
 * Copyright (c) 2026 Qualcomm Technologies, Inc.
 * All Rights Reserved.
 * Confidential and Proprietary - Qualcomm Technologies, Inc.
 */

package vendor.qti.AmbientDataControl;


import android.os.ParcelFileDescriptor;


/**
 * Control configuration file descriptor
 */


@VintfStability
parcelable ControlConfigFileDescriptor {
  /* A name assigned to file descriptor, used for mapping
   * with indeitificcation provided in JSON RPC message */
  String configName;

   @Backing(type="int") @VintfStability
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

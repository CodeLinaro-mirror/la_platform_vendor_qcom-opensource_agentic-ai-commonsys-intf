/**
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.AmbientDataReporting;

import android.os.ParcelFileDescriptor;

/**
 *Structure for additional data reported from IAmbientDataReporting interface 
 */

@VintfStability
parcelable AdditionalReportingData {
  /* A unique name assigned to file descriptor is provided in dataDescriptorName
    * JSON RPC response message also provides the unique name to select the file descriptor.
    * receiver shall match the data descriptor identity provided in JSON message and match
   * with dataDescriptorName before accessing File Descriptor in this structure */
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
/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.coreif;

import android.os.ParcelFileDescriptor;

@VintfStability
parcelable ResponseDataDescriptor {

    /** Name matching the fd reference used in jsonResponse */
    String configName;

    @Backing(type="int") @VintfStability
    enum DataFormat {
        BYTE_ARRAY               = 0,
        JSON_STRING              = 1,
        /**
         * Flattened C-compatible BatchedEmbeddingVector layout:
         *
         * struct BatchedEmbeddingVector {
         *     uint32_t             num_vectors;
         *     EmbeddingVectorData  vectorData[];
         * };
         * struct EmbeddingVectorData {
         *     uint32_t embedding_id;  // matches id in jsonRequest
         *     float    vector[];      // size fixed by model config
         * };
         *
         * Receiver casts fd memory to BatchedEmbeddingVector.
         */
        BATCHED_EMBEDDING_VECTOR = 2
    }

    DataFormat dataFormat;
    ParcelFileDescriptor fd;
}

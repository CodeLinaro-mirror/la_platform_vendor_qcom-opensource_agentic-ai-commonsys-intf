package vendor.qti.AmbientDataControl;

import vendor.qti.AmbientDataControl.ControlConfigFileDescriptor;

/**
 * Control request structure for messages towards QAIOR Lifelog Sensor data
 */

@VintfStability

parcelable AmbientDataControlRequest {
    /**
     * Sensor control request message as JSON, 
     * must follow structuring defined by JSON schema
     */
    String jsonRequest;

    /**
     * Shared memory with additional data which cannot be included in 'jsonRequest'.
     * 'jsonRequest' also explicitly indicates allocation and presence of data in the
     * shared memory file descriptor, otherwise the descriptor is not allocated.
     * When allocated 'jsonRequest' explicitly indicates the format of data.
     * 
     *  When the Shared memory file descriptor is allocated, the data types supported is
     * 1> "byte[]" : referred to as "BYTE_STREAM" holding a JSON String with predefined schema.
     */
    @nullable ControlConfigFileDescriptor[] controlData;
}
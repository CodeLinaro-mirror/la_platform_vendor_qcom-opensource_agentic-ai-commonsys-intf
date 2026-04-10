package vendor.qti.AmbientDataReporting;
import android.os.ParcelFileDescriptor;
/**
 * Sensor data notification structure
 */
@VintfStability
parcelable AmbientDataReport {
    /**
     * Notification message as JSON string, 
     * must follow structuring defined by JSON schema
     * The JSON notification explicitly indicates the notification type
     * 1> 'lifelog_trnascripts': follows JSON Schema for 'lifelog transcript'
     * 2> 'user_attributes': follows JSON schema for 'user atributes data'
     */
    String jsonNotification;
    /**
     * Shared memory with additional data which cannot be included in JSON message.
     * 'jsonNotification' also explicitly indicates allocation and presence of data in the
     * shared memory file descriptor, otherwise the descriptor is not allocated.
     * When allocated 'jsonRequest' explicitly indicates the format of data.
     * 
     * When the file descriptor is allocated, the data types supported is of type
     * 1> "byte[]" : referred to as "BYTE_STREAM" holding a JSON String with predefined schema.
     *
     */
    @nullable ParcelFileDescriptor fd;
}
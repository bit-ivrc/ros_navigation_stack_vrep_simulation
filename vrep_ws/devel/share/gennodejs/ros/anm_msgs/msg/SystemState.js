// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.envchks = null;
      this.syschks = null;
      this.navptschks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('envchks')) {
        this.envchks = initObj.envchks
      }
      else {
        this.envchks = 0;
      }
      if (initObj.hasOwnProperty('syschks')) {
        this.syschks = initObj.syschks
      }
      else {
        this.syschks = 0;
      }
      if (initObj.hasOwnProperty('navptschks')) {
        this.navptschks = initObj.navptschks
      }
      else {
        this.navptschks = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [envchks]
    bufferOffset = _serializer.uint8(obj.envchks, buffer, bufferOffset);
    // Serialize message field [syschks]
    bufferOffset = _serializer.uint8(obj.syschks, buffer, bufferOffset);
    // Serialize message field [navptschks]
    bufferOffset = _serializer.uint8(obj.navptschks, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemState
    let len;
    let data = new SystemState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [envchks]
    data.envchks = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [syschks]
    data.syschks = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [navptschks]
    data.navptschks = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/SystemState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbef3d6b7a4084b15097fdfe26dfc637';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains the current state of the autonomous system
    # Detailed documentation can be found in google drive under the
    # architecture/system supervisor folder
    
    # The following constants are used to define the states
    uint8 ST_OFF = 0        # in manual mode - system is off
    uint8 ST_STANDBY = 1    # in manual mode - system is ready to go to auto mode
    uint8 ST_NOT_READY = 2  # in manual mode - system is not ready to go auto mode
    uint8 ST_PARKED = 3     # in auto mode - system is autonomously parked
    uint8 ST_DRIVE = 4      # in auto mode - system is autonomously driving
    uint8 ST_EPULLOVER = 5  # in auto mode - system is emergency pulling over
    
    # Message definition
    Header header
    uint8 state             # the state of the system
    uint8 envchks           # environment ready checks - 0 = fail, 1 = pass
    uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass
    uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.envchks !== undefined) {
      resolved.envchks = msg.envchks;
    }
    else {
      resolved.envchks = 0
    }

    if (msg.syschks !== undefined) {
      resolved.syschks = msg.syschks;
    }
    else {
      resolved.syschks = 0
    }

    if (msg.navptschks !== undefined) {
      resolved.navptschks = msg.navptschks;
    }
    else {
      resolved.navptschks = 0
    }

    return resolved;
    }
};

// Constants for message
SystemState.Constants = {
  ST_OFF: 0,
  ST_STANDBY: 1,
  ST_NOT_READY: 2,
  ST_PARKED: 3,
  ST_DRIVE: 4,
  ST_EPULLOVER: 5,
}

module.exports = SystemState;

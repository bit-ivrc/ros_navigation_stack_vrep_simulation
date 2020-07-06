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

class ShuttleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pickup_waypoint = null;
      this.dropoff_waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pickup_waypoint')) {
        this.pickup_waypoint = initObj.pickup_waypoint
      }
      else {
        this.pickup_waypoint = '';
      }
      if (initObj.hasOwnProperty('dropoff_waypoint')) {
        this.dropoff_waypoint = initObj.dropoff_waypoint
      }
      else {
        this.dropoff_waypoint = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShuttleRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pickup_waypoint]
    bufferOffset = _serializer.string(obj.pickup_waypoint, buffer, bufferOffset);
    // Serialize message field [dropoff_waypoint]
    bufferOffset = _serializer.string(obj.dropoff_waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShuttleRequest
    let len;
    let data = new ShuttleRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pickup_waypoint]
    data.pickup_waypoint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dropoff_waypoint]
    data.dropoff_waypoint = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.pickup_waypoint.length;
    length += object.dropoff_waypoint.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/ShuttleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01e5c9d9c3c1b369563b3402a45ec191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Pickup and dropoff locations for shuttle demo
    
    Header header
    string pickup_waypoint     # name of pickup anm_waypoint
    string dropoff_waypoint    # name of dropoff anm_waypoint
    
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
    const resolved = new ShuttleRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pickup_waypoint !== undefined) {
      resolved.pickup_waypoint = msg.pickup_waypoint;
    }
    else {
      resolved.pickup_waypoint = ''
    }

    if (msg.dropoff_waypoint !== undefined) {
      resolved.dropoff_waypoint = msg.dropoff_waypoint;
    }
    else {
      resolved.dropoff_waypoint = ''
    }

    return resolved;
    }
};

module.exports = ShuttleRequest;

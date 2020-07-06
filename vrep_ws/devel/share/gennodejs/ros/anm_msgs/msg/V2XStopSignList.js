// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2XStopSign = require('./V2XStopSign.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class V2XStopSignList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stopsigns = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stopsigns')) {
        this.stopsigns = initObj.stopsigns
      }
      else {
        this.stopsigns = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XStopSignList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stopsigns]
    // Serialize the length for message field [stopsigns]
    bufferOffset = _serializer.uint32(obj.stopsigns.length, buffer, bufferOffset);
    obj.stopsigns.forEach((val) => {
      bufferOffset = V2XStopSign.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XStopSignList
    let len;
    let data = new V2XStopSignList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stopsigns]
    // Deserialize array length for message field [stopsigns]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stopsigns = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stopsigns[i] = V2XStopSign.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 44 * object.stopsigns.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XStopSignList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ffc5debd5ad0e18ac34e3976054c283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of v2x stop signs
    
    Header header
    V2XStopSign[] stopsigns
    
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
    
    ================================================================================
    MSG: anm_msgs/V2XStopSign
    # Stop sign custom header
    #
    # id            = ID of stop sign (for multiple stop signs)
    # position      = x y position in odom frame (meters)
    # yaw           = heading in radians north of east
    # effect_length = length of the "fence line" for stop sign (meters)
    
    uint32 id
    geometry_msgs/Point position
    float64 yaw
    float64 effect_length
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2XStopSignList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stopsigns !== undefined) {
      resolved.stopsigns = new Array(msg.stopsigns.length);
      for (let i = 0; i < resolved.stopsigns.length; ++i) {
        resolved.stopsigns[i] = V2XStopSign.Resolve(msg.stopsigns[i]);
      }
    }
    else {
      resolved.stopsigns = []
    }

    return resolved;
    }
};

module.exports = V2XStopSignList;

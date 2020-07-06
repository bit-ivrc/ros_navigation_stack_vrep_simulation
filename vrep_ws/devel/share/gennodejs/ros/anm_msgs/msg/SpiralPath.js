// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathState = require('./PathState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SpiralPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.sf = null;
      this.reference_state = null;
      this.goal_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
      if (initObj.hasOwnProperty('sf')) {
        this.sf = initObj.sf
      }
      else {
        this.sf = 0.0;
      }
      if (initObj.hasOwnProperty('reference_state')) {
        this.reference_state = initObj.reference_state
      }
      else {
        this.reference_state = new PathState();
      }
      if (initObj.hasOwnProperty('goal_state')) {
        this.goal_state = initObj.goal_state
      }
      else {
        this.goal_state = new PathState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpiralPath
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float64(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.float64(obj.c, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float64(obj.d, buffer, bufferOffset);
    // Serialize message field [sf]
    bufferOffset = _serializer.float64(obj.sf, buffer, bufferOffset);
    // Serialize message field [reference_state]
    bufferOffset = PathState.serialize(obj.reference_state, buffer, bufferOffset);
    // Serialize message field [goal_state]
    bufferOffset = PathState.serialize(obj.goal_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpiralPath
    let len;
    let data = new SpiralPath(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sf]
    data.sf = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reference_state]
    data.reference_state = PathState.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_state]
    data.goal_state = PathState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/SpiralPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbdb9aa67633991647d7cd82b98e0d51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is a parametric representation of a spiral curve
    # The curve is used to define a local path
    #
    # a, b, c, d = parameters that define the spiral curve
    # sf = total length of curve (meters)
    # reference_state = current position on the curve
    # goal_state = endpoint of the curve
    
    Header header
    float64 a
    float64 b
    float64 c
    float64 d
    float64 sf
    PathState reference_state
    PathState goal_state
    
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
    MSG: anm_msgs/PathState
    # This message defines a position along a spiral curve
    #
    # x = x position in global frame (meters)
    # y = y position in global frame (meters)
    # theta = angle of curve tangent at position x, y (radians)
    # k = curvature of curve at position x, y (1/meters)
    # s = length in along (meters)
    
    float64 x
    float64 y
    float64 theta
    float64 k
    float64 s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpiralPath(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    if (msg.sf !== undefined) {
      resolved.sf = msg.sf;
    }
    else {
      resolved.sf = 0.0
    }

    if (msg.reference_state !== undefined) {
      resolved.reference_state = PathState.Resolve(msg.reference_state)
    }
    else {
      resolved.reference_state = new PathState()
    }

    if (msg.goal_state !== undefined) {
      resolved.goal_state = PathState.Resolve(msg.goal_state)
    }
    else {
      resolved.goal_state = new PathState()
    }

    return resolved;
    }
};

module.exports = SpiralPath;

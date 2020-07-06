// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PathState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.theta = null;
      this.k = null;
      this.s = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = 0.0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathState
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [k]
    bufferOffset = _serializer.float64(obj.k, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathState
    let len;
    let data = new PathState(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k]
    data.k = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/PathState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f01869787c5fbeca1214c9d0f162135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PathState(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.k !== undefined) {
      resolved.k = msg.k;
    }
    else {
      resolved.k = 0.0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    return resolved;
    }
};

module.exports = PathState;

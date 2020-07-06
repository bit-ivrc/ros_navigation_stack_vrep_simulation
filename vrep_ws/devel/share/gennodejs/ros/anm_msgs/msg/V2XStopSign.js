// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class V2XStopSign {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.yaw = null;
      this.effect_length = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('effect_length')) {
        this.effect_length = initObj.effect_length
      }
      else {
        this.effect_length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XStopSign
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [effect_length]
    bufferOffset = _serializer.float64(obj.effect_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XStopSign
    let len;
    let data = new V2XStopSign(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [effect_length]
    data.effect_length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XStopSign';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72f27a0ddc174ecc9ec3a9297776ac86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new V2XStopSign(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.effect_length !== undefined) {
      resolved.effect_length = msg.effect_length;
    }
    else {
      resolved.effect_length = 0.0
    }

    return resolved;
    }
};

module.exports = V2XStopSign;

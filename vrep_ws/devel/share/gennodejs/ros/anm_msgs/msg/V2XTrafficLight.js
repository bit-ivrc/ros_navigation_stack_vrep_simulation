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

class V2XTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.yaw = null;
      this.effect_length = null;
      this.time_to_change = null;
      this.light_state = null;
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
      if (initObj.hasOwnProperty('time_to_change')) {
        this.time_to_change = initObj.time_to_change
      }
      else {
        this.time_to_change = 0.0;
      }
      if (initObj.hasOwnProperty('light_state')) {
        this.light_state = initObj.light_state
      }
      else {
        this.light_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XTrafficLight
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [effect_length]
    bufferOffset = _serializer.float64(obj.effect_length, buffer, bufferOffset);
    // Serialize message field [time_to_change]
    bufferOffset = _serializer.float64(obj.time_to_change, buffer, bufferOffset);
    // Serialize message field [light_state]
    bufferOffset = _serializer.uint8(obj.light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XTrafficLight
    let len;
    let data = new V2XTrafficLight(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [effect_length]
    data.effect_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_to_change]
    data.time_to_change = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [light_state]
    data.light_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c63ccb831497f2fd06b1f8852c656d2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Traffic light v2x custom header
    #
    # id             = ID of traffic light (for traffic lights)
    # position       = x y position in odom frame (meters)
    # yaw            = heading in radians north of east
    # effect_length  = length of the "fence line" for traffic light (meters)
    # time_to_change = the time left for the light state to  change (seconds)
    # light_state    = current state of the light (below has state numbers)
    
    uint32 id
    geometry_msgs/Point position
    float64 yaw
    float64 effect_length
    float64 time_to_change
    
    uint8 light_state
    uint8 DARK = 0
    uint8 GREEN = 1
    uint8 YELLOW = 2
    uint8 RED = 3
    uint8 V2X_LIGHT_STATE_KIND_COUNT = 4
    
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
    const resolved = new V2XTrafficLight(null);
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

    if (msg.time_to_change !== undefined) {
      resolved.time_to_change = msg.time_to_change;
    }
    else {
      resolved.time_to_change = 0.0
    }

    if (msg.light_state !== undefined) {
      resolved.light_state = msg.light_state;
    }
    else {
      resolved.light_state = 0
    }

    return resolved;
    }
};

// Constants for message
V2XTrafficLight.Constants = {
  DARK: 0,
  GREEN: 1,
  YELLOW: 2,
  RED: 3,
  V2X_LIGHT_STATE_KIND_COUNT: 4,
}

module.exports = V2XTrafficLight;

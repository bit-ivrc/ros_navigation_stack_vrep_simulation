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

class V2XVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.speed = null;
      this.yaw = null;
      this.is_self = null;
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
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('is_self')) {
        this.is_self = initObj.is_self
      }
      else {
        this.is_self = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XVehicle
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [is_self]
    bufferOffset = _serializer.bool(obj.is_self, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XVehicle
    let len;
    let data = new V2XVehicle(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_self]
    data.is_self = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37f8e1d7c4cd5cf2bc765b7f1a716323';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vehicle v2x custom header
    #
    # id       = ID of vehicle
    # position = x y position in odom frame (meters)
    # speed    = speed of the vehicle (meters/second)
    # yaw      = heading in radians north of east
    # self     = if this is the local vehicle, true, otherwise, false
    
    uint32 id
    geometry_msgs/Point position
    float64 speed
    float64 yaw
    bool is_self
    
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
    const resolved = new V2XVehicle(null);
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

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.is_self !== undefined) {
      resolved.is_self = msg.is_self;
    }
    else {
      resolved.is_self = false
    }

    return resolved;
    }
};

module.exports = V2XVehicle;

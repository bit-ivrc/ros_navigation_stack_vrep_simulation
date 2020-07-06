// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2XVehicle = require('./V2XVehicle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class V2XVehicleList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicles')) {
        this.vehicles = initObj.vehicles
      }
      else {
        this.vehicles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XVehicleList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicles]
    // Serialize the length for message field [vehicles]
    bufferOffset = _serializer.uint32(obj.vehicles.length, buffer, bufferOffset);
    obj.vehicles.forEach((val) => {
      bufferOffset = V2XVehicle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XVehicleList
    let len;
    let data = new V2XVehicleList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicles]
    // Deserialize array length for message field [vehicles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicles[i] = V2XVehicle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 45 * object.vehicles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XVehicleList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f758b76380074c54472a3cc1598b5be7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of v2x vehicles
    
    Header header
    V2XVehicle[] vehicles
    
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
    MSG: anm_msgs/V2XVehicle
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
    const resolved = new V2XVehicleList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicles !== undefined) {
      resolved.vehicles = new Array(msg.vehicles.length);
      for (let i = 0; i < resolved.vehicles.length; ++i) {
        resolved.vehicles[i] = V2XVehicle.Resolve(msg.vehicles[i]);
      }
    }
    else {
      resolved.vehicles = []
    }

    return resolved;
    }
};

module.exports = V2XVehicleList;

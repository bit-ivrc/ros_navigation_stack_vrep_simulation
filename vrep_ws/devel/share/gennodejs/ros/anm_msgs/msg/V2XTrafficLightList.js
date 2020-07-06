// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2XTrafficLight = require('./V2XTrafficLight.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class V2XTrafficLightList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.traffic_lights = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('traffic_lights')) {
        this.traffic_lights = initObj.traffic_lights
      }
      else {
        this.traffic_lights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XTrafficLightList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [traffic_lights]
    // Serialize the length for message field [traffic_lights]
    bufferOffset = _serializer.uint32(obj.traffic_lights.length, buffer, bufferOffset);
    obj.traffic_lights.forEach((val) => {
      bufferOffset = V2XTrafficLight.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XTrafficLightList
    let len;
    let data = new V2XTrafficLightList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_lights]
    // Deserialize array length for message field [traffic_lights]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_lights = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_lights[i] = V2XTrafficLight.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 53 * object.traffic_lights.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/V2XTrafficLightList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3380c76e7b58f862b1077024369633ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of v2x traffic lights
    
    Header header
    V2XTrafficLight[] traffic_lights
    
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
    MSG: anm_msgs/V2XTrafficLight
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
    const resolved = new V2XTrafficLightList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.traffic_lights !== undefined) {
      resolved.traffic_lights = new Array(msg.traffic_lights.length);
      for (let i = 0; i < resolved.traffic_lights.length; ++i) {
        resolved.traffic_lights[i] = V2XTrafficLight.Resolve(msg.traffic_lights[i]);
      }
    }
    else {
      resolved.traffic_lights = []
    }

    return resolved;
    }
};

module.exports = V2XTrafficLightList;

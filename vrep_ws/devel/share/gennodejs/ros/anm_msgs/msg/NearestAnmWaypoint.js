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

class NearestAnmWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.distance = null;
      this.now_reached = null;
      this.last_reached = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('now_reached')) {
        this.now_reached = initObj.now_reached
      }
      else {
        this.now_reached = false;
      }
      if (initObj.hasOwnProperty('last_reached')) {
        this.last_reached = initObj.last_reached
      }
      else {
        this.last_reached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NearestAnmWaypoint
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [now_reached]
    bufferOffset = _serializer.bool(obj.now_reached, buffer, bufferOffset);
    // Serialize message field [last_reached]
    bufferOffset = _serializer.bool(obj.last_reached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NearestAnmWaypoint
    let len;
    let data = new NearestAnmWaypoint(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [now_reached]
    data.now_reached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_reached]
    data.last_reached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/NearestAnmWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '804fca42cf51ff9c5042032107f82370';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The nearest anm_waypoint and its current distance
    # Note, the nearest anm_waypoint may be one that hasn't been reached yet
    
    string name        # special waypoint tag
    float64 distance   # distance in m
    bool now_reached   # true if distance is smaller than waypoint_radius
    bool last_reached  # true if this waypoint is the last to be in range
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NearestAnmWaypoint(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.now_reached !== undefined) {
      resolved.now_reached = msg.now_reached;
    }
    else {
      resolved.now_reached = false
    }

    if (msg.last_reached !== undefined) {
      resolved.last_reached = msg.last_reached;
    }
    else {
      resolved.last_reached = false
    }

    return resolved;
    }
};

module.exports = NearestAnmWaypoint;

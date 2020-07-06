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

class CommandCheckingReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_message = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandCheckingReport
    // Serialize message field [error_message]
    bufferOffset = std_msgs.msg.String.serialize(obj.error_message, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int16(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandCheckingReport
    let len;
    let data = new CommandCheckingReport(null);
    // Deserialize message field [error_message]
    data.error_message = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.error_message);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/CommandCheckingReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e493a4ffb569d2d770774c27d6f3ed0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message acts as a report from the command_checking node to broadcast
    # any errors detected in the control commands
    
    std_msgs/String error_message
    int16 error_code
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandCheckingReport(null);
    if (msg.error_message !== undefined) {
      resolved.error_message = std_msgs.msg.String.Resolve(msg.error_message)
    }
    else {
      resolved.error_message = new std_msgs.msg.String()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = CommandCheckingReport;

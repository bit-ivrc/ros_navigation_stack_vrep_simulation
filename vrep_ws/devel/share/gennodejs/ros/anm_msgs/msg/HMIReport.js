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

class HMIReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.auto_toggle_pressed = null;
      this.manual_estop_pressed = null;
      this.auto_engage_pressed = null;
      this.auto_disengage_pressed = null;
      this.environment_checks_pressed = null;
      this.system_checks_pressed = null;
      this.emergency_pullover_exit_pressed = null;
      this.manual_drive_pressed = null;
      this.gear_change_pressed = null;
      this.auto_toggle = null;
      this.manual_estop = null;
      this.environment_checks = null;
      this.system_checks = null;
      this.emergency_pullover_exit = null;
      this.gear_setting = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('auto_toggle_pressed')) {
        this.auto_toggle_pressed = initObj.auto_toggle_pressed
      }
      else {
        this.auto_toggle_pressed = 0;
      }
      if (initObj.hasOwnProperty('manual_estop_pressed')) {
        this.manual_estop_pressed = initObj.manual_estop_pressed
      }
      else {
        this.manual_estop_pressed = 0;
      }
      if (initObj.hasOwnProperty('auto_engage_pressed')) {
        this.auto_engage_pressed = initObj.auto_engage_pressed
      }
      else {
        this.auto_engage_pressed = 0;
      }
      if (initObj.hasOwnProperty('auto_disengage_pressed')) {
        this.auto_disengage_pressed = initObj.auto_disengage_pressed
      }
      else {
        this.auto_disengage_pressed = 0;
      }
      if (initObj.hasOwnProperty('environment_checks_pressed')) {
        this.environment_checks_pressed = initObj.environment_checks_pressed
      }
      else {
        this.environment_checks_pressed = 0;
      }
      if (initObj.hasOwnProperty('system_checks_pressed')) {
        this.system_checks_pressed = initObj.system_checks_pressed
      }
      else {
        this.system_checks_pressed = 0;
      }
      if (initObj.hasOwnProperty('emergency_pullover_exit_pressed')) {
        this.emergency_pullover_exit_pressed = initObj.emergency_pullover_exit_pressed
      }
      else {
        this.emergency_pullover_exit_pressed = 0;
      }
      if (initObj.hasOwnProperty('manual_drive_pressed')) {
        this.manual_drive_pressed = initObj.manual_drive_pressed
      }
      else {
        this.manual_drive_pressed = 0;
      }
      if (initObj.hasOwnProperty('gear_change_pressed')) {
        this.gear_change_pressed = initObj.gear_change_pressed
      }
      else {
        this.gear_change_pressed = 0;
      }
      if (initObj.hasOwnProperty('auto_toggle')) {
        this.auto_toggle = initObj.auto_toggle
      }
      else {
        this.auto_toggle = 0;
      }
      if (initObj.hasOwnProperty('manual_estop')) {
        this.manual_estop = initObj.manual_estop
      }
      else {
        this.manual_estop = 0;
      }
      if (initObj.hasOwnProperty('environment_checks')) {
        this.environment_checks = initObj.environment_checks
      }
      else {
        this.environment_checks = 0;
      }
      if (initObj.hasOwnProperty('system_checks')) {
        this.system_checks = initObj.system_checks
      }
      else {
        this.system_checks = 0;
      }
      if (initObj.hasOwnProperty('emergency_pullover_exit')) {
        this.emergency_pullover_exit = initObj.emergency_pullover_exit
      }
      else {
        this.emergency_pullover_exit = 0;
      }
      if (initObj.hasOwnProperty('gear_setting')) {
        this.gear_setting = initObj.gear_setting
      }
      else {
        this.gear_setting = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [auto_toggle_pressed]
    bufferOffset = _serializer.uint8(obj.auto_toggle_pressed, buffer, bufferOffset);
    // Serialize message field [manual_estop_pressed]
    bufferOffset = _serializer.uint8(obj.manual_estop_pressed, buffer, bufferOffset);
    // Serialize message field [auto_engage_pressed]
    bufferOffset = _serializer.uint8(obj.auto_engage_pressed, buffer, bufferOffset);
    // Serialize message field [auto_disengage_pressed]
    bufferOffset = _serializer.uint8(obj.auto_disengage_pressed, buffer, bufferOffset);
    // Serialize message field [environment_checks_pressed]
    bufferOffset = _serializer.uint8(obj.environment_checks_pressed, buffer, bufferOffset);
    // Serialize message field [system_checks_pressed]
    bufferOffset = _serializer.uint8(obj.system_checks_pressed, buffer, bufferOffset);
    // Serialize message field [emergency_pullover_exit_pressed]
    bufferOffset = _serializer.uint8(obj.emergency_pullover_exit_pressed, buffer, bufferOffset);
    // Serialize message field [manual_drive_pressed]
    bufferOffset = _serializer.uint8(obj.manual_drive_pressed, buffer, bufferOffset);
    // Serialize message field [gear_change_pressed]
    bufferOffset = _serializer.uint8(obj.gear_change_pressed, buffer, bufferOffset);
    // Serialize message field [auto_toggle]
    bufferOffset = _serializer.uint8(obj.auto_toggle, buffer, bufferOffset);
    // Serialize message field [manual_estop]
    bufferOffset = _serializer.uint8(obj.manual_estop, buffer, bufferOffset);
    // Serialize message field [environment_checks]
    bufferOffset = _serializer.uint8(obj.environment_checks, buffer, bufferOffset);
    // Serialize message field [system_checks]
    bufferOffset = _serializer.uint8(obj.system_checks, buffer, bufferOffset);
    // Serialize message field [emergency_pullover_exit]
    bufferOffset = _serializer.uint8(obj.emergency_pullover_exit, buffer, bufferOffset);
    // Serialize message field [gear_setting]
    bufferOffset = _serializer.uint8(obj.gear_setting, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIReport
    let len;
    let data = new HMIReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_toggle_pressed]
    data.auto_toggle_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [manual_estop_pressed]
    data.manual_estop_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_engage_pressed]
    data.auto_engage_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_disengage_pressed]
    data.auto_disengage_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [environment_checks_pressed]
    data.environment_checks_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [system_checks_pressed]
    data.system_checks_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emergency_pullover_exit_pressed]
    data.emergency_pullover_exit_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [manual_drive_pressed]
    data.manual_drive_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_change_pressed]
    data.gear_change_pressed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_toggle]
    data.auto_toggle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [manual_estop]
    data.manual_estop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [environment_checks]
    data.environment_checks = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [system_checks]
    data.system_checks = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emergency_pullover_exit]
    data.emergency_pullover_exit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_setting]
    data.gear_setting = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/HMIReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '515b6d3b9f37b3178d08258bc23fa8f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message indicates input changes on the HMI
    # Any field with an '_pressed' at the end is a button update (1 = update, 0 = not)
    # Any field after with a 1 means PASS/ON/SET, and 0 means FAIIL/OFF/UNSET (except gear change)
    # For gear change, 0=park, 1=drive, 2=reverse, 3=neutral, 4=low
    
    Header header
    uint8 auto_toggle_pressed
    uint8 manual_estop_pressed
    uint8 auto_engage_pressed
    uint8 auto_disengage_pressed
    uint8 environment_checks_pressed
    uint8 system_checks_pressed
    uint8 emergency_pullover_exit_pressed
    uint8 manual_drive_pressed
    uint8 gear_change_pressed
    uint8 auto_toggle
    uint8 manual_estop
    uint8 environment_checks
    uint8 system_checks
    uint8 emergency_pullover_exit
    uint8 gear_setting
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.auto_toggle_pressed !== undefined) {
      resolved.auto_toggle_pressed = msg.auto_toggle_pressed;
    }
    else {
      resolved.auto_toggle_pressed = 0
    }

    if (msg.manual_estop_pressed !== undefined) {
      resolved.manual_estop_pressed = msg.manual_estop_pressed;
    }
    else {
      resolved.manual_estop_pressed = 0
    }

    if (msg.auto_engage_pressed !== undefined) {
      resolved.auto_engage_pressed = msg.auto_engage_pressed;
    }
    else {
      resolved.auto_engage_pressed = 0
    }

    if (msg.auto_disengage_pressed !== undefined) {
      resolved.auto_disengage_pressed = msg.auto_disengage_pressed;
    }
    else {
      resolved.auto_disengage_pressed = 0
    }

    if (msg.environment_checks_pressed !== undefined) {
      resolved.environment_checks_pressed = msg.environment_checks_pressed;
    }
    else {
      resolved.environment_checks_pressed = 0
    }

    if (msg.system_checks_pressed !== undefined) {
      resolved.system_checks_pressed = msg.system_checks_pressed;
    }
    else {
      resolved.system_checks_pressed = 0
    }

    if (msg.emergency_pullover_exit_pressed !== undefined) {
      resolved.emergency_pullover_exit_pressed = msg.emergency_pullover_exit_pressed;
    }
    else {
      resolved.emergency_pullover_exit_pressed = 0
    }

    if (msg.manual_drive_pressed !== undefined) {
      resolved.manual_drive_pressed = msg.manual_drive_pressed;
    }
    else {
      resolved.manual_drive_pressed = 0
    }

    if (msg.gear_change_pressed !== undefined) {
      resolved.gear_change_pressed = msg.gear_change_pressed;
    }
    else {
      resolved.gear_change_pressed = 0
    }

    if (msg.auto_toggle !== undefined) {
      resolved.auto_toggle = msg.auto_toggle;
    }
    else {
      resolved.auto_toggle = 0
    }

    if (msg.manual_estop !== undefined) {
      resolved.manual_estop = msg.manual_estop;
    }
    else {
      resolved.manual_estop = 0
    }

    if (msg.environment_checks !== undefined) {
      resolved.environment_checks = msg.environment_checks;
    }
    else {
      resolved.environment_checks = 0
    }

    if (msg.system_checks !== undefined) {
      resolved.system_checks = msg.system_checks;
    }
    else {
      resolved.system_checks = 0
    }

    if (msg.emergency_pullover_exit !== undefined) {
      resolved.emergency_pullover_exit = msg.emergency_pullover_exit;
    }
    else {
      resolved.emergency_pullover_exit = 0
    }

    if (msg.gear_setting !== undefined) {
      resolved.gear_setting = msg.gear_setting;
    }
    else {
      resolved.gear_setting = 0
    }

    return resolved;
    }
};

module.exports = HMIReport;

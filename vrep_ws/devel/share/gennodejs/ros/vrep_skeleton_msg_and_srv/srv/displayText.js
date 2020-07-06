// Auto-generated. Do not edit!

// (in-package vrep_skeleton_msg_and_srv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class displayTextRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.textToDisplay = null;
    }
    else {
      if (initObj.hasOwnProperty('textToDisplay')) {
        this.textToDisplay = initObj.textToDisplay
      }
      else {
        this.textToDisplay = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type displayTextRequest
    // Serialize message field [textToDisplay]
    bufferOffset = _serializer.string(obj.textToDisplay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type displayTextRequest
    let len;
    let data = new displayTextRequest(null);
    // Deserialize message field [textToDisplay]
    data.textToDisplay = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.textToDisplay.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_skeleton_msg_and_srv/displayTextRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e35f54986033203e2229a885ac9f976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string textToDisplay
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new displayTextRequest(null);
    if (msg.textToDisplay !== undefined) {
      resolved.textToDisplay = msg.textToDisplay;
    }
    else {
      resolved.textToDisplay = ''
    }

    return resolved;
    }
};

class displayTextResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dialogHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('dialogHandle')) {
        this.dialogHandle = initObj.dialogHandle
      }
      else {
        this.dialogHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type displayTextResponse
    // Serialize message field [dialogHandle]
    bufferOffset = _serializer.int32(obj.dialogHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type displayTextResponse
    let len;
    let data = new displayTextResponse(null);
    // Deserialize message field [dialogHandle]
    data.dialogHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_skeleton_msg_and_srv/displayTextResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '290f4bd47ce8d0f7c78c1d510052331a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 dialogHandle
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new displayTextResponse(null);
    if (msg.dialogHandle !== undefined) {
      resolved.dialogHandle = msg.dialogHandle;
    }
    else {
      resolved.dialogHandle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: displayTextRequest,
  Response: displayTextResponse,
  md5sum() { return 'd53844fdc821fc6baaf569373762bd8b'; },
  datatype() { return 'vrep_skeleton_msg_and_srv/displayText'; }
};

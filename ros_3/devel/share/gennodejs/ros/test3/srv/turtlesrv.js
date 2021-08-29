// Auto-generated. Do not edit!

// (in-package test3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class turtlesrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.turtlename = null;
      this.x = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = false;
      }
      if (initObj.hasOwnProperty('turtlename')) {
        this.turtlename = initObj.turtlename
      }
      else {
        this.turtlename = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtlesrvRequest
    // Serialize message field [data]
    bufferOffset = _serializer.bool(obj.data, buffer, bufferOffset);
    // Serialize message field [turtlename]
    bufferOffset = _serializer.string(obj.turtlename, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtlesrvRequest
    let len;
    let data = new turtlesrvRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turtlename]
    data.turtlename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.turtlename.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test3/turtlesrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a31ceb1ca4fcd0b5c3ccae94b453e5b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool data
    string turtlename
    float64 x
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtlesrvRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = false
    }

    if (msg.turtlename !== undefined) {
      resolved.turtlename = msg.turtlename;
    }
    else {
      resolved.turtlename = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    return resolved;
    }
};

class turtlesrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtlesrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtlesrvResponse
    let len;
    let data = new turtlesrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test3/turtlesrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtlesrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: turtlesrvRequest,
  Response: turtlesrvResponse,
  md5sum() { return 'cbc75de5a4fb9f83b2d98718a6d2f59b'; },
  datatype() { return 'test3/turtlesrv'; }
};

// Auto-generated. Do not edit!

// (in-package ros_essentials_cpp.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AreaRectangleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.w = null;
      this.h = null;
    }
    else {
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AreaRectangleRequest
    // Serialize message field [w]
    bufferOffset = _serializer.float64(obj.w, buffer, bufferOffset);
    // Serialize message field [h]
    bufferOffset = _serializer.float64(obj.h, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AreaRectangleRequest
    let len;
    let data = new AreaRectangleRequest(null);
    // Deserialize message field [w]
    data.w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [h]
    data.h = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_essentials_cpp/AreaRectangleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77a0c743f6f1c6eff93d5316852c1de2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 w
    float64 h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AreaRectangleRequest(null);
    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = 0.0
    }

    return resolved;
    }
};

class AreaRectangleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AreaRectangleResponse
    // Serialize message field [area]
    bufferOffset = _serializer.float64(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AreaRectangleResponse
    let len;
    let data = new AreaRectangleResponse(null);
    // Deserialize message field [area]
    data.area = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_essentials_cpp/AreaRectangleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '502b7bd5115b3b4f57d03446f9208d12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 area
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AreaRectangleResponse(null);
    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: AreaRectangleRequest,
  Response: AreaRectangleResponse,
  md5sum() { return 'acc8e380ccd62fbb09a40f869ff912e3'; },
  datatype() { return 'ros_essentials_cpp/AreaRectangle'; }
};

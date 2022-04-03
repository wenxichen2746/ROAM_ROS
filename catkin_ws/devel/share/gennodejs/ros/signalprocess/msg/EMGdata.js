// Auto-generated. Do not edit!

// (in-package signalprocess.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EMGdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_time = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('current_time')) {
        this.current_time = initObj.current_time
      }
      else {
        this.current_time = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EMGdata
    // Serialize message field [current_time]
    bufferOffset = _serializer.string(obj.current_time, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EMGdata
    let len;
    let data = new EMGdata(null);
    // Deserialize message field [current_time]
    data.current_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_time);
    length += 4 * object.data.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'signalprocess/EMGdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05db57eabda2aa74915fdeb4724bd1eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_time
    float32[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EMGdata(null);
    if (msg.current_time !== undefined) {
      resolved.current_time = msg.current_time;
    }
    else {
      resolved.current_time = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = EMGdata;

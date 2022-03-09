// To parse this JSON data, do
//
//     final device = deviceFromJson(jsonString);

import 'dart:convert';

List<Device> deviceFromJson(String deviceRespones) => List<Device>.from(json
    .decode(deviceRespones)
    .map((deviceRespones) => Device.fromJson(deviceRespones)));

class Device {
  Device({
    this.deviceId,
    this.deviceName,
    this.title,
  });

  String? deviceId;
  String? deviceName;
  String? title;

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        deviceId: json["deviceID"] == null ? null : json["deviceID"],
        deviceName: json["deviceName"] == null ? null : json["deviceName"],
        title: json["title"] == null ? null : json["title"],
      );
}

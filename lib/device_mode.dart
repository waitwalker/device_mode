import 'dart:async';

import 'package:flutter/services.dart';

class DeviceMode {
  static const MethodChannel _channel =
      const MethodChannel('cn.waitwalker/device_mode');

  ///
  /// @name get device info
  /// @description
  /// @parameters
  /// @return
  /// @author waitwalker
  /// @date 2020-01-17
  ///
  static Future<Map<String,dynamic>> get deviceModeInfo async{
    final Map modeInfo = await _channel.invokeMethod("deviceInfo");
    return modeInfo;
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

import 'dart:async';

import 'package:flutter/services.dart';

class LogPlugin {
  static const MethodChannel _channel = const MethodChannel('log_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void d(String tag, String message) {
    _channel.invokeMethod("logD", {"tag": tag, "message": message});
  }

  static void e(String tag, String message) {
    _channel.invokeMethod("logE", {"tag": tag, "message": message});
  }

  static void i(String tag, String message) {
    _channel.invokeMethod("logI", {"tag": tag, "message": message});
  }
}

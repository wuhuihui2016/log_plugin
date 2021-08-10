import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:log_plugin/log_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('log_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LogPlugin.platformVersion, '42');
  });
}

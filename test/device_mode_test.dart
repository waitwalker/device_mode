import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:device_mode/device_mode.dart';

void main() {
  const MethodChannel channel = MethodChannel('device_mode');

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
    expect(await DeviceMode.platformVersion, '42');
  });
}

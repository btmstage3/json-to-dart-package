import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kart_json_plugin/kart_json_plugin_method_channel.dart';

void main() {
  MethodChannelKartJsonPlugin platform = MethodChannelKartJsonPlugin();
  const MethodChannel channel = MethodChannel('kart_json_plugin');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}

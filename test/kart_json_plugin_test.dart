import 'package:flutter_test/flutter_test.dart';
import 'package:kart_json_plugin/kart_json_plugin.dart';
import 'package:kart_json_plugin/kart_json_plugin_platform_interface.dart';
import 'package:kart_json_plugin/kart_json_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKartJsonPluginPlatform
    with MockPlatformInterfaceMixin
    implements KartJsonPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KartJsonPluginPlatform initialPlatform = KartJsonPluginPlatform.instance;

  test('$MethodChannelKartJsonPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKartJsonPlugin>());
  });

  test('getPlatformVersion', () async {
    KartJsonPlugin kartJsonPlugin = KartJsonPlugin();
    MockKartJsonPluginPlatform fakePlatform = MockKartJsonPluginPlatform();
    KartJsonPluginPlatform.instance = fakePlatform;

    expect(await kartJsonPlugin.getPlatformVersion(), '42');
  });
}

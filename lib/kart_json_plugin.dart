
import 'kart_json_plugin_platform_interface.dart';

class KartJsonPlugin {
  Future<String?> getPlatformVersion() {
    return KartJsonPluginPlatform.instance.getPlatformVersion();
  }
}

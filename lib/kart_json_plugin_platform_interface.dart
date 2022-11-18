import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'kart_json_plugin_method_channel.dart';

abstract class KartJsonPluginPlatform extends PlatformInterface {
  /// Constructs a KartJsonPluginPlatform.
  KartJsonPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static KartJsonPluginPlatform _instance = MethodChannelKartJsonPlugin();

  /// The default instance of [KartJsonPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelKartJsonPlugin].
  static KartJsonPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KartJsonPluginPlatform] when
  /// they register themselves.
  static set instance(KartJsonPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

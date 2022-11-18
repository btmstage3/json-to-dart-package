#import "KartJsonPlugin.h"
#if __has_include(<kart_json_plugin/kart_json_plugin-Swift.h>)
#import <kart_json_plugin/kart_json_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kart_json_plugin-Swift.h"
#endif

@implementation KartJsonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKartJsonPlugin registerWithRegistrar:registrar];
}
@end

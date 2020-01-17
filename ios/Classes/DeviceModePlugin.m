#import "DeviceModePlugin.h"
#if __has_include(<device_mode/device_mode-Swift.h>)
#import <device_mode/device_mode-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "device_mode-Swift.h"
#endif

@implementation DeviceModePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeviceModePlugin registerWithRegistrar:registrar];
}
@end

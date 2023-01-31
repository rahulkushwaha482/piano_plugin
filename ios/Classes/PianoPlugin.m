#import "PianoPlugin.h"
#if __has_include(<piano/piano-Swift.h>)
#import <piano/piano-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "piano-Swift.h"
#endif

@implementation PianoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPianoPlugin registerWithRegistrar:registrar];
}
@end

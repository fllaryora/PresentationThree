#import "PresentationthreePlugin.h"
#if __has_include(<presentationthree/presentationthree-Swift.h>)
#import <presentationthree/presentationthree-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "presentationthree-Swift.h"
#endif

@implementation PresentationthreePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPresentationthreePlugin registerWithRegistrar:registrar];
}
@end

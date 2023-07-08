import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'presentationthree_platform_interface.dart';

/// An implementation of [PresentationthreePlatform] that uses method channels.
class MethodChannelPresentationthree extends PresentationthreePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('presentationthree');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

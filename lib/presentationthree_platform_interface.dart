import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'presentationthree_method_channel.dart';

abstract class PresentationthreePlatform extends PlatformInterface {
  /// Constructs a PresentationthreePlatform.
  PresentationthreePlatform() : super(token: _token);

  static final Object _token = Object();

  static PresentationthreePlatform _instance = MethodChannelPresentationthree();

  /// The default instance of [PresentationthreePlatform] to use.
  ///
  /// Defaults to [MethodChannelPresentationthree].
  static PresentationthreePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PresentationthreePlatform] when
  /// they register themselves.
  static set instance(PresentationthreePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

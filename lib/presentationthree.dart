
import 'presentationthree_platform_interface.dart';

class Presentationthree {
  Future<String?> getPlatformVersion() {
    return PresentationthreePlatform.instance.getPlatformVersion();
  }
}

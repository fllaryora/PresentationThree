import 'package:flutter_test/flutter_test.dart';
import 'package:presentationthree/presentationthree.dart';
import 'package:presentationthree/presentationthree_platform_interface.dart';
import 'package:presentationthree/presentationthree_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPresentationthreePlatform
    with MockPlatformInterfaceMixin
    implements PresentationthreePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PresentationthreePlatform initialPlatform = PresentationthreePlatform.instance;

  test('$MethodChannelPresentationthree is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPresentationthree>());
  });

  test('getPlatformVersion', () async {
    Presentationthree presentationthreePlugin = Presentationthree();
    MockPresentationthreePlatform fakePlatform = MockPresentationthreePlatform();
    PresentationthreePlatform.instance = fakePlatform;

    expect(await presentationthreePlugin.getPlatformVersion(), '42');
  });
}

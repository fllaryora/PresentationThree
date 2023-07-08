import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentationthree/presentationthree_method_channel.dart';

void main() {
  MethodChannelPresentationthree platform = MethodChannelPresentationthree();
  const MethodChannel channel = MethodChannel('presentationthree');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'piano_method_channel.dart';

abstract class PianoPlatform extends PlatformInterface {
  PianoPlatform() : super(token: _token);

  static final Object _token = Object();

  static PianoPlatform _instance = MethodChannelPiano();

  static PianoPlatform get instance => _instance;

  static set instance(PianoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<int?> onKeyDown(int key) {
    throw UnimplementedError('KeyDown() has not been implemented.');
  }

  Future<int?> onKeyUp(int key) {
    throw UnimplementedError('KeyUp() has not been implemented.');
  }
}

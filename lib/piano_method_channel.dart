import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'piano_platform_interface.dart';

class MethodChannelPiano extends PianoPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('piano');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<int?> onKeyDown(int key) async {
    final int? numNotesOn =
        await methodChannel.invokeMethod('onKeyDown', [key]);
    return numNotesOn;
  }

  @override
  Future<int?> onKeyUp(int key) async {
    final int? numNotesOn = await methodChannel.invokeMethod('onKeyUp', [key]);
    return numNotesOn;
  }
}

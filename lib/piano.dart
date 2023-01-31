
import 'piano_platform_interface.dart';

class Piano {
  Future<String?> getPlatformVersion() {
    return PianoPlatform.instance.getPlatformVersion();
  }

  Future<int?> onKeyDown(int key) {
    return PianoPlatform.instance.onKeyDown(key);
  }

  Future<int?> onKeyUp(int key) {
    return PianoPlatform.instance.onKeyUp(key);
  }


}

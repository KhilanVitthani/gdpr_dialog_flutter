import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gdpr_dialog_flutter_platform_interface.dart';

/// An implementation of [GdprDialogFlutterPlatform] that uses method channels.
class MethodChannelGdprDialogFlutter extends GdprDialogFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gdpr_dialog_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

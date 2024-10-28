import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gdpr_dialog_flutter_method_channel.dart';

abstract class GdprDialogFlutterPlatform extends PlatformInterface {
  /// Constructs a GdprDialogFlutterPlatform.
  GdprDialogFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static GdprDialogFlutterPlatform _instance = MethodChannelGdprDialogFlutter();

  /// The default instance of [GdprDialogFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelGdprDialogFlutter].
  static GdprDialogFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GdprDialogFlutterPlatform] when
  /// they register themselves.
  static set instance(GdprDialogFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

// import 'package:flutter_test/flutter_test.dart';
// import 'package:gdpr_dialog_flutter/gdpr_dialog_flutter.dart';
// import 'package:gdpr_dialog_flutter/gdpr_dialog_flutter_platform_interface.dart';
// import 'package:gdpr_dialog_flutter/gdpr_dialog_flutter_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockGdprDialogFlutterPlatform
//     with MockPlatformInterfaceMixin
//     implements GdprDialogFlutterPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final GdprDialogFlutterPlatform initialPlatform = GdprDialogFlutterPlatform.instance;
//
//   test('$MethodChannelGdprDialogFlutter is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelGdprDialogFlutter>());
//   });
//
//   test('getPlatformVersion', () async {
//     GdprDialogFlutter gdprDialogFlutterPlugin = GdprDialogFlutter();
//     MockGdprDialogFlutterPlatform fakePlatform = MockGdprDialogFlutterPlatform();
//     GdprDialogFlutterPlatform.instance = fakePlatform;
//
//     expect(await gdprDialogFlutterPlugin.getPlatformVersion(), '42');
//   });
// }

import 'package:flutter/material.dart';
import 'package:gdpr_dialog_flutter/gdpr_dialog_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String status = 'none';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('Show dialog'),
                onPressed: () {
                  GdprDialogFlutter.instance.resetDecision();
                  GdprDialogFlutter.instance
                      .showDialog(
                          isForTest: true,
                          testDeviceId: '5C442443C9D17BA56185F8FC6EBD37DB')
                      .then((onValue) {
                    setState(() => status = 'dialog result == $onValue');
                  });
                },
              ),
              ElevatedButton(
                child: Text('Get consent status'),
                onPressed: () => GdprDialogFlutter.instance
                    .getConsentStatus()
                    .then((value) =>
                        setState(() => status = 'consent status == $value')),
              ),
              Container(height: 50),
              Text(status),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shise_app_flutter/test/DemoPage.dart';

class DemoApp extends StatelessWidget {
  DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: DemoPage());
  }
}

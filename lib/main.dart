import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';
import 'package:flutter_widget_sample/screen/home.dart';

void main() {
  runApp(const FlutterWidgetSample());
}

class FlutterWidgetSample extends StatelessWidget {
  const FlutterWidgetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

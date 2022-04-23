import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';
import 'package:flutter_widget_sample/screen/list_builder.dart';

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
      home: const HomePage(
        navBarTitle: AppString.appTitle,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.navBarTitle}) : super(key: key);

  final String navBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          navBarTitle,
        ),
      ),
      body: Center(
        child: _expansionTile(context),
      ),
    );
  }

  Widget _expansionTile(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: const Text(AppString.list),
          children: [
            ListTile(
              title: const Text(AppString.listViewBuilder),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) {
                    return const ListBuilderView();
                  },
                ),
              ),
            ),
            const ListTile(
              title: Text(AppString.listViewGenerate),
            ),
            const ListTile(
              title: Text(AppString.listViewSeparated),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';

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
      home: const _HomePage(
        navBarTitle: AppString.appTitle,
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key, required this.navBarTitle}) : super(key: key);

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
        child: _expansionTile(),
      ),
    );
  }

  Widget _expansionTile() {
    return Column(
      children: [
        ExpansionTile(
          title: const Text(AppString.list),
          children: [
            ListTile(
              title: const Text('ListView.builder'),
              onTap: _tap,
            ),
            ListTile(
              title: const Text('ListView.generate'),
              onTap: _tap,
            )
          ],
        ),
      ],
    );
  }

  // FIXME: 仮置き
  void _tap() {
    print('hoge');
  }

  Widget _listBuilder() {
    return ListView.builder(
      itemCount: AppString.listViewBuilderArray.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(AppString.listViewBuilderArray[index]),
        );
      },
    );
  }
}

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
            const ListTile(
              title: Text('ListView.generate'),
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

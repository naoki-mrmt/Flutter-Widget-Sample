import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';

class ListBuilderView extends StatelessWidget {
  const ListBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppString.listViewBuilder,
        ),
      ),
      body: _listBuilder(),
    );
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

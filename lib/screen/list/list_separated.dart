import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';

class ListSeparatedView extends StatelessWidget {
  const ListSeparatedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppString.listViewSeparated,
        ),
      ),
      body: _listBuilder(),
    );
  }

  Widget _listBuilder() {
    return ListView.separated(
      itemCount: AppString.listViewArray.length,
      separatorBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(AppString.listViewArray[index]),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 0.5,
        );
      },
    );
  }
}

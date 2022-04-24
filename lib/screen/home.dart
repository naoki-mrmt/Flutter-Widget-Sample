import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';
import 'package:flutter_widget_sample/screen/list/list_builder.dart';
import 'package:flutter_widget_sample/screen/list/list_separated.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppString.appTitle,
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
        _listExpansionTile(
          AppString.list,
          context,
        ),
      ],
    );
  }

  Widget _listTile(BuildContext context, String title, Widget widget) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) {
            return widget;
          },
        ),
      ),
    );
  }

  Widget _listExpansionTile(String title, BuildContext context) {
    return ExpansionTile(
      title: const Text(AppString.list),
      children: [
        _listTile(
          context,
          AppString.listViewBuilder,
          const ListBuilderView(),
        ),
        _listTile(
          context,
          AppString.listViewSeparated,
          const ListSeparatedView(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';
import 'package:flutter_widget_sample/screen/list/list_builder.dart';

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
              // onTap: {},
            ),
            const ListTile(
              title: Text(AppString.listViewSeparated),
              // onTap: {},
            ),
          ],
        ),
      ],
    );
  }
}

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
            ListTile(
              title: const Text(AppString.listViewSeparated),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) {
                    return const ListSeparatedView();
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

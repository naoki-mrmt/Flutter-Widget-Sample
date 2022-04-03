import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/constant/app_string.dart';
import 'package:flutter_widget_sample/constant/route_name.dart';
import 'package:flutter_widget_sample/screen/list_builder.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final WidgetBuilder builder;
  switch (settings.name) {
    case RouteName.listBuilderRoute:
      builder = (_) => const ListBuilderView();
      break;
    default:
      builder = (_) => const Scaffold(
            body: Center(
              child: Text(AppString.notFoundPage),
            ),
          );
      break;
  }
  return MaterialPageRoute<void>(
    builder: builder,
    settings: settings,
  );
}

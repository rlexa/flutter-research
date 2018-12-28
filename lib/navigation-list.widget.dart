import 'package:flutter/material.dart';
import 'common/build-widgets.dart';

class NavigationListWidget extends StatelessWidget {
  NavigationListWidget(
      {Key key, @required this.items, this.title = 'Navigation'})
      : super(key: key);

  final Map<String, WidgetBuilder> items;
  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: BuildWidgets.appBarSettings(context: context, title: title),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: items.entries
              .map((item) =>
                  _NavigationItemWidget(text: item.key, builder: item.value))
              .toList(),
        ),
      );
}

class _NavigationItemWidget extends StatelessWidget {
  _NavigationItemWidget({Key key, @required this.text, @required this.builder})
      : super(key: key);

  final String text;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(text),
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: builder)),
      );
}

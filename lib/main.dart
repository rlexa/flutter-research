import 'package:flutter/material.dart';

import 'counter.widget.dart';
import 'hello.widget.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stuff',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.red,
      ),
      home: NavigationListWidget(),
      showPerformanceOverlay: false,
    );
  }
}

class NavigationListItem {
  NavigationListItem(this.text, this.builder);
  final String text;
  final WidgetBuilder builder;
}

class NavigationListWidget extends StatelessWidget {
  final items = [
    NavigationListItem('Hello', (context) => HelloWidget()),
    NavigationListItem('Counter', (context) => CounterWidget()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Routes')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items
                .map((item) => NavigationItemWidget(
                    text: item.text, builder: item.builder))
                .toList(),
          ),
        ));
  }
}

class NavigationItemWidget extends StatelessWidget {
  NavigationItemWidget({Key key, this.text, this.builder}) : super(key: key);

  final String text;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: builder),
        );
      },
    );
  }
}

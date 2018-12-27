import 'package:flutter/material.dart';

import 'counter.widget.dart';
import 'hello.widget.dart';
import 'navigation-list.widget.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Stuff',
        theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.red),
        home: NavigationListWidget(
          title: 'Routes',
          items: {
            'Hello': (context) => HelloWidget(),
            'Counter': (context) => CounterWidget(),
          },
        ),
        showPerformanceOverlay: false,
      );
}

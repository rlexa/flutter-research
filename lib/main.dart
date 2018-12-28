import 'package:flutter/material.dart';

import 'home.widget.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Stuff',
        theme: ThemeData.light(),
        home: HomeWidget(),
        showPerformanceOverlay: false,
      );
}

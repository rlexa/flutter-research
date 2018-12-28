import 'package:flutter/material.dart';

import 'home.widget.dart';
import 'state/theme.bloc.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StreamBuilder<ThemeData>(
        initialData: ThemeBloc().themeData$.value,
        stream: ThemeBloc().themeData$.distinct(),
        builder: (context, snapshot) => MaterialApp(
              title: 'Flutter Stuff',
              theme: snapshot.data,
              home: HomeWidget(),
              showPerformanceOverlay: false,
            ),
      );
}

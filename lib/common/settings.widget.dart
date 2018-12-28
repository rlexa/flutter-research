import 'package:flutter/material.dart';

import '../state/theme.bloc.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ListTile(title: _ThemeSelectWidget()),
          ],
        ),
      );
}

class _ThemeSelectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StreamBuilder<Map<String, ThemeData>>(
        initialData: ThemeBloc().nameToTheme$.value,
        stream: ThemeBloc().nameToTheme$,
        builder: (context, snapshot) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Themes'),
              Container(
                padding: EdgeInsets.only(left: 32),
                child: Wrap(
                    spacing: 8,
                    children: snapshot.data.entries
                        .map((kv) => Theme(
                              data: kv.value,
                              isMaterialAppTheme: true,
                              child: RaisedButton(
                                child: Text(kv.key),
                                onPressed: () =>
                                    ThemeBloc().themeData$.add(kv.value),
                              ),
                            ))
                        .toList()),
              )
            ]),
      );
}

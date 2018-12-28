import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ListTile(title: Text('TODO')),
            ListTile(title: Text('TODO')),
            ListTile(title: Text('TODO')),
          ],
        ),
      );
}

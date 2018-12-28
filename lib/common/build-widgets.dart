import 'package:flutter/material.dart';
import 'settings.widget.dart';

class BuildWidgets {
  static WidgetBuilder wbSettings = (context) => SettingsWidget();

  static AppBar appBarSettings(
          {@required BuildContext context,
          String title = '',
          WidgetBuilder builder}) =>
      AppBar(
        title: Text(title),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: builder != null
                            ? builder
                            : BuildWidgets.wbSettings),
                  )),
        ],
      );
}

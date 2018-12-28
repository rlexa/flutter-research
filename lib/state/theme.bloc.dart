import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemeBloc {
  static ThemeBloc _instance;

  factory ThemeBloc() {
    if (_instance == null) {
      _instance = ThemeBloc._internal(
        nameToTheme$: BehaviorSubject(seedValue: {
          'Light': ThemeData.light(),
          'Dark': ThemeData.dark(),
        }),
        themeData$: BehaviorSubject(seedValue: ThemeData.light()),
      );
    }
    return _instance;
  }

  ThemeBloc._internal({this.nameToTheme$, this.themeData$});

  final BehaviorSubject<Map<String, ThemeData>> nameToTheme$;
  final BehaviorSubject<ThemeData> themeData$;

  void dispose() {
    nameToTheme$.close();
    themeData$.close();
  }
}

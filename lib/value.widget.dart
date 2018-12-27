import 'package:flutter/material.dart';

class ValueWidget<T> extends StatelessWidget {
  ValueWidget({Key key, @required this.value}) : super(key: key);

  final T value;

  @override
  Widget build(BuildContext context) => Text(
        value == null ? '-' : value.toString(),
        style: Theme.of(context).textTheme.display1,
      );
}

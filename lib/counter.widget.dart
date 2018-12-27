import 'package:flutter/material.dart';

import 'value.widget.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

mixin _Counter {
  int _counter = 0;
  void _incrementCounter() => ++_counter;
}

class _CounterWidgetState extends State<CounterWidget> with _Counter {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            ValueWidget(value: _counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => this._incrementCounter()),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

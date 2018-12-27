import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Center(
          child:
              Text('Hello world!', style: Theme.of(context).textTheme.display1),
        ),
      );
}

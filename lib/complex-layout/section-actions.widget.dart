import 'package:flutter/material.dart';

typedef DynamicBuildContextCallback = dynamic Function(BuildContext context);

class DataAction {
  DataAction({@required this.callback, @required this.icon, this.text = ''});
  final IconData icon;
  final String text;
  final DynamicBuildContextCallback callback;
}

class SectionActionsWidget extends StatelessWidget {
  SectionActionsWidget({Key key, @required this.actions}) : super(key: key);

  final List<DataAction> actions;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              actions.map((action) => _ActionWidget(data: action)).toList(),
        ),
      );
}

class _ActionWidget extends StatelessWidget {
  _ActionWidget({Key key, @required this.data}) : super(key: key);

  final DataAction data;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          IconButton(
            icon: Icon(data.icon),
            onPressed: () => data.callback(context),
            color: Theme.of(context).colorScheme.primary,
          ),
          Text(
            data.text,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      );
}

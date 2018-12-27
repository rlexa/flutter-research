import 'package:flutter/material.dart';

class SectionActionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ActionWidget(icon: Icons.call, callback: () {}, text: 'CALL'),
            _ActionWidget(
                icon: Icons.navigation, callback: () {}, text: 'ROUTE'),
            _ActionWidget(icon: Icons.share, callback: () {}, text: 'SHARE')
          ],
        ),
      );
}

class _ActionWidget extends StatelessWidget {
  _ActionWidget(
      {Key key, @required this.callback, @required this.icon, this.text = ''})
      : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: callback,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            text,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      );
}

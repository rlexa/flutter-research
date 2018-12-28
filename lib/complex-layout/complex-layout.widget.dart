import 'package:flutter/material.dart';

import 'section-title.widget.dart';
import 'section-actions.widget.dart';

class DataDetails {
  DataDetails({
    @required this.assetImage,
    @required this.title,
    @required this.titleSub,
    @required this.description,
    @required this.ratingNormalized,
  });
  final String assetImage, title, titleSub, description;
  final num ratingNormalized;
}

class ComplexLayoutWidget extends StatelessWidget {
  ComplexLayoutWidget(
      {Key key, @required this.data, this.title = 'Complex Layout'})
      : super(key: key);

  final String title;
  final DataDetails data;

  DynamicBuildContextCallback showSnackbarCallback(String text) =>
      (BuildContext context) =>
          Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          Image.asset(data.assetImage, fit: BoxFit.cover),
          SectionTitleWidget(
              title: data.title,
              titleSub: data.titleSub,
              ratingNormalized: data.ratingNormalized),
          SectionActionsWidget(actions: [
            DataAction(
                icon: Icons.call,
                callback: showSnackbarCallback('TODO'),
                text: 'CALL'),
            DataAction(
                icon: Icons.navigation,
                callback: showSnackbarCallback('TODO'),
                text: 'ROUTE'),
            DataAction(
                icon: Icons.share,
                callback: showSnackbarCallback('TODO'),
                text: 'SHARE'),
          ]),
          Container(
            padding: EdgeInsets.all(32),
            child: Text(data.description, softWrap: true),
          ),
        ],
      ),
    );
  }
}

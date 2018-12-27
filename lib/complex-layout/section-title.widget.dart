import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  SectionTitleWidget({
    Key key,
    @required this.title,
    @required this.titleSub,
    @required this.ratingNormalized,
  }) : super(key: key);

  final String title, titleSub;
  final num ratingNormalized;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text(titleSub, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Color.lerp(Colors.grey, Colors.green, ratingNormalized),
            ),
            Text((ratingNormalized * 100).floor().toString(),
                style: Theme.of(context).textTheme.headline),
          ],
        ),
      );
}
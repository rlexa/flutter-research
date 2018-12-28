import 'package:flutter/material.dart';

import 'complex-layout/complex-layout.widget.dart';
import 'counter.widget.dart';
import 'hello.widget.dart';
import 'navigation-list.widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => NavigationListWidget(
        title: 'Routes',
        items: {
          'Hello': (context) => HelloWidget(),
          'Counter': (context) => CounterWidget(),
          'Complex Layout': (context) => ComplexLayoutWidget(
                data: DataDetails(
                  assetImage: 'assets/images/lake.jpg',
                  title: 'Oeschinnen Lake Campground',
                  titleSub: 'Kandersteg, Switzerland',
                  description:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                  ratingNormalized: 0.5,
                ),
              ),
        },
      );
}

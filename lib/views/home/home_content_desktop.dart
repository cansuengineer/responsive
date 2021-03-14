import 'package:flutter/material.dart';

import 'package:responsive/widgets/course_details/course_details.dart';
import 'package:responsive/widgets/links/links.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child:
              //child: CallToAction('Join Course'),
              Links(),
        ),
      ],
    );
  }
}

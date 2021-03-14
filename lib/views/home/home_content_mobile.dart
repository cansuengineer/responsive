import 'package:flutter/material.dart';
//import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:responsive/widgets/course_details/course_details.dart';
import 'package:responsive/widgets/links/links.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(
          height: 400,
          child: Links(),
        ),
        //CallToAction('Join Course'),
      ],
    );
  }
}

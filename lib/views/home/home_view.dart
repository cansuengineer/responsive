import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive/views/home/home_content_desktop.dart';
import 'package:responsive/views/home/home_content_mobile.dart';
import 'package:responsive/widgets/centered_view/centered_view.dart';
import 'package:responsive/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
                child: ScreenTypeLayout(
              mobile: HomeContentMobile(),
              desktop: HomeContentDesktop(),
            ))
          ],
        ),
      ),
    );
  }
}

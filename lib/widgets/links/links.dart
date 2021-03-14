import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  const Links({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Center(
                child: GestureDetector(
                    child: Image.asset('assets/medium.png'), onTap: launchURL),
              ),
              Center(
                child: GestureDetector(
                    child: Image.asset('assets/twitter.png'),
                    onTap: launchURLT),
              ),
              Center(
                child: GestureDetector(
                    child: Image.asset('assets/linkedin.png'),
                    onTap: launchURLL),
              ),
              Center(
                child: GestureDetector(
                    child: Image.asset('assets/github.png'), onTap: launchURLG),
              )
            ]));
      },
    );
  }
}

void launchURL() async =>
    await canLaunch(_urlm) ? await launch(_urlm) : print("gggg");

void launchURLT() async =>
    await canLaunch(_urlt) ? await launch(_urlt) : print("gggg");

void launchURLL() async =>
    await canLaunch(_urll) ? await launch(_urll) : print("gggg");

void launchURLG() async =>
    await canLaunch(_urlg) ? await launch(_urlg) : print("gggg");

const _urlm = 'https://medium.com/@cansu.uzunsimsek';
const _urlt = 'https://twitter.com/CansuUzunsimsek';
const _urll = 'https://www.linkedin.com/in/cansu-uzunsimsek/';
const _urlg = 'https://github.com/cansuengineer';

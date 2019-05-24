
import 'package:flutter/material.dart';
import './SocialIcons.dart';
import './CustomIcons.dart';

class SocialButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          colors: [
            Color(0xFF102397),
            Color(0xFF187adf),
            Color(0xFF00eaf8),
          ],
          iconData: CustomIcons.facebook,
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Color(0xFFff4f38),
            Color(0xFFff355d),
          ],
          iconData: CustomIcons.googlePlus,
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Color(0xFF17ead9),
            Color(0xFF6078ea),
          ],
          iconData: CustomIcons.twitter,
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Color(0xFF00c6fb),
            Color(0xFF005bea),
          ],
          iconData: CustomIcons.linkedin,
          onPressed: () {},
        )
      ],
    );
  }

}
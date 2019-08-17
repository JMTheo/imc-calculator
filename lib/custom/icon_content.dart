import 'package:flutter/material.dart';
import 'constants.dart';

class IconContentCard extends StatelessWidget {
  IconContentCard({this.genderText, this.genderIcon});

  final String genderText;
  final IconData genderIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

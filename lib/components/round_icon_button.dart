import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: RawMaterialButton(
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPressed,
        shape: const CircleBorder(),
        fillColor: kBackgroundRoundColour,
        elevation: 6.0,
        disabledElevation: 6.0,
        child: Icon(icon),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../utilities/helpers.dart';
import '../utilities/utils.dart';

class MainButton extends StatelessWidget {
  final Function() action;
  final String buttonText;
  const MainButton({super.key, required this.action, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: action,
      color: mainButtonColor,
      minWidth: deviceWidth(context) * 0.9,
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final IconData iconData;
  final Function() onPressed;
  const CircularButton(
      {super.key, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      minWidth: 40,
      height: 40,
      color: mainButtonColor,
      child: Icon(
        iconData,
        color: Colors.black,
        size: 40,
      ),
    );
  }
}

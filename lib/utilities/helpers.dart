import 'package:flutter/material.dart';

Widget verticalSpace(double height) => SizedBox(
      height: height,
    );

Widget horizontalSpace(double width) => SizedBox(
      width: width,
    );

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

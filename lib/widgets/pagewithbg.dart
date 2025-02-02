import 'package:flutter/material.dart';

import '../utilities/utils.dart';

class PageWithBackground extends StatelessWidget {
  final Widget child;
  final String assetImagePath;
  final double opacity;
  const PageWithBackground(
      {super.key, required this.assetImagePath, required this.child, required this.opacity, });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
      height: double.infinity,
      
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetImagePath),
          fit: BoxFit.fill,
          opacity: opacity,
        ),
         gradient: LinearGradient(
          colors: [
            primaryColor.withAlpha(200),
            primaryColor.withAlpha(200),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}

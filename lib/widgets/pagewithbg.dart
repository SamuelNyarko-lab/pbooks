import 'package:flutter/material.dart';

class PageWithBackground extends StatelessWidget {
  final Scaffold child;
  final String assetImagePath;
  final double opacity;
  const PageWithBackground(
      {super.key, required this.assetImagePath, required this.child, required this.opacity, });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetImagePath),
          fit: BoxFit.fill,
          opacity: opacity,
        ),
      ),
      child: Scaffold(),
    );
  }
}

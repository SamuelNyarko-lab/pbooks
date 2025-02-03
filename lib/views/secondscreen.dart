// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utilities/helpers.dart';
import '../widgets/button.dart';
import '../widgets/headerlogo.dart';
import '../widgets/pagewithbg.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  List<int> ages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return PageWithBackground(
      assetImagePath: 'assets/images/moana2.jpg',
      opacity: 0.01,
      child: Scaffold(
        appBar: AppBar(
          leading: CircularButton(
            iconData: Icons.arrow_back,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          leadingWidth: 100,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HeaderLogo(),
            ),
          ],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              verticalSpace(40),
              Text(
                'How old are you?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins-Bold',
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              verticalSpace(50),
              Container(
                height: deviceHeight(context) * 0.5,
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(20),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(40),
                      right: Radius.circular(40),
                    )),
              )
            ],
          ),
        ),
        bottomSheet: BottomSheet(onClosing: (){}, builder: (context)=> Container(
                  height: deviceHeight(context) * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(20),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(40),
                        right: Radius.circular(40),
                      )),
                ), ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pbooks/utilities/helpers.dart';
import 'package:pbooks/utilities/utils.dart';
import 'package:pbooks/views/secondscreen.dart';
import 'package:pbooks/widgets/button.dart';
import 'package:pbooks/widgets/headerlogo.dart';
import 'package:pbooks/widgets/pagewithbg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWithBackground(
      assetImagePath: 'assets/images/moana2.jpg',
      opacity: 0.01,
      child: Scaffold(
        appBar: AppBar(
          leading: CircularButton(
            iconData: Icons.arrow_back,
            onPressed: () {},
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
              Column(
                children: [
                  verticalSpace(40),
                  Text(
                    'What Is your Name?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-Bold',
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  verticalSpace(50),
                  SizedBox(
                    width: deviceWidth(context) * 0.9,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      cursorColor: Colors.white,
                      cursorErrorColor: Colors.white,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        fillColor: Colors.white.withAlpha(50),
                        border: mainTheme.inputDecorationTheme.border,
                        filled: true,
                        enabledBorder:
                            mainTheme.inputDecorationTheme.enabledBorder,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              MainButton(
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  buttonText: 'Continue'),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pbooks/utilities/helpers.dart';
import 'package:pbooks/utilities/utils.dart';
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
          
          leading: Align(
                alignment: Alignment.centerLeft,

            child: Padding(
              padding: const EdgeInsets.only(left: 5), // Adds space to the left
              child: CircularButton(
                iconData: Icons.arrow_back,
                onPressed: () {},
              ),
            ),
          ),
          leadingWidth: 50,
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
                  verticalSpace(20),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(),
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

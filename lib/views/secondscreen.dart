// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pbooks/views/thirdscreen.dart';

import '../utilities/helpers.dart';
import '../widgets/button.dart';
import '../widgets/headerlogo.dart';
import '../widgets/pagewithbg.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  List<int> ages = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
  final ValueNotifier<int?> selectedIndex = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return PageWithBackground(
      assetImagePath: 'assets/images/moana2.jpg',
      opacity: 0.02,
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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(15),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(40),
                    right: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      height: (deviceHeight(context) * 0.5) - 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: ListView.builder(
                          //       itemCount: ages.length,
                          //       itemBuilder: (context, index) {
                          //         return Padding(
                          //           padding: const EdgeInsets.all(20.0),
                          //           child: Text(
                          //             '${ages[index]} yrs',
                          //             textAlign: TextAlign.center,
                          //             style: TextStyle(
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.w600,
                          //               fontSize: 30,
                          //               fontFamily: 'Poppins'
                          //             ),
                          //           ),
                          //         );
                          //       }),
                          // )
                          Expanded(
                            child: ValueListenableBuilder<int?>(
                              valueListenable:
                                  selectedIndex, // ✅ Correct usage here
                              builder: (context, selected, child) {
                                return ListView.builder(
                                  itemCount: ages.length,
                                  //itemExtent: 50,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    bool isSelected = selected == index;
                                    return GestureDetector(
                                      onTap: () => selectedIndex.value =
                                          index, // Update selected value
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          // Selection Overlay Box (Only visible when selected)
                                          if (isSelected)
                                            Container(
                                              height: 55,
                                              width: deviceWidth(context) *0.7,
                                              decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.15),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          // Text
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 20),
                                            child: Text(
                                              '${ages[index]} yrs',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: isSelected ? 27 : 25,
                                                fontWeight:isSelected ? FontWeight.w500
                                                    : FontWeight.w400,
                                                color: Colors.white.withOpacity(
                                                    isSelected ? 1 : 0.5),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      child: MainButton(
                          action: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdScreen(),
                              ),
                            );
                          },
                          buttonText: 'Continue'),
                    ),
                    verticalSpace(20),
                  ],
                ),
              )
            ],
          ),
        ),
        // bottomSheet: BottomSheet(onClosing: (){}, builder: (context)=> Container(
        //           height: deviceHeight(context) * 0.5,
        //           decoration: BoxDecoration(
        //               color: Colors.white.withAlpha(20),
        //               borderRadius: BorderRadius.horizontal(
        //                 left: Radius.circular(40),
        //                 right: Radius.circular(40),
        //               )),
        //         ), ),
      ),
    );
  }
}

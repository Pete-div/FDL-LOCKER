import 'package:facl_locker_room/components/button.dart';
import 'package:facl_locker_room/components/circle.dart';
import 'package:facl_locker_room/components/model.dart';
import 'package:facl_locker_room/components/position_container.dart';
import 'package:facl_locker_room/components/theme.dart';
import 'package:flutter/material.dart';

class SingleScreen extends StatefulWidget {
  const SingleScreen({super.key});

  @override
  State<SingleScreen> createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: Container(
        child: PageView.builder(
            physics: BouncingScrollPhysics(),
            onPageChanged: (i) {
              setState(() {
                currentIndex = i;
              });
            },
            controller: _pageController,
            itemCount: screens.length,
            itemBuilder: (_, i) {
              return Stack(children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Stack(
                      children:[ Container(
                        height: (MediaQuery.of(context).size.height) / 2,
                        width: double.infinity,
                        color: screens[i].color,
                        child: Column(
                          children: [
                            Circle(),
                          
                         
                          
                          ],
                        ),
                      ),]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 150.0, bottom: 22),
                          child: Button(
                              onpressed: () {
                                _pageController.jumpToPage(1
                                  
                                );
                                var showSnackBar = SnackBar(
                                    elevation: 4,
                                    padding: EdgeInsets.only(
                                      left: 8,
                                      top: 8,
                                      bottom: 8,
                                    ),
                                    duration: Duration(milliseconds: 200),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    content: Text(
                                        '“New background color has been updated to green'));

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(showSnackBar);
                              },
                              text: 'Get Stared'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 48.0),
                          child: Button(
                              onpressed: () {
                                _pageController.jumpToPage(2);

                                var showSnackBar = SnackBar(
                                    elevation: 4,
                                    duration: Duration(milliseconds: 200),
                                    padding: EdgeInsets.only(
                                      left: 8,
                                      top: 8,
                                      bottom: 8,
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    content: Text(
                                        'New background color has been updated to purple'));

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(showSnackBar);
                              },
                              text: 'I already have an account'),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: PositionContainer(
                    text: screens[i].text,
                  ),
                ),
              ]);
            }),
      ),
    );
  }
}

//  _pageController.nextPage(
//                                                 duration:
//                                                     Duration(milliseconds: 300),
//                                                 curve: Curves.easeInOut,
//                                               );

//  PageView.builder(
//                   itemCount: screens.length,
//                   //  Circle()
//                   physics: BouncingScrollPhysics(),
//                   onPageChanged: (i) {
//                     setState(() {
//                       currentIndex = i;
//                     });
//                   },
//                   controller: _pageController,
//                   itemBuilder: (_, i) {
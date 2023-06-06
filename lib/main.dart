import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ukhantukka/screen/aboutus.dart';
import 'package:ukhantukka/screen/feedback.dart';

import 'package:ukhantukka/screen/homepage.dart';

void main() => runApp(const UkhanTukka());

class UkhanTukka extends StatelessWidget {
  const UkhanTukka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: const Color.fromRGBO(51, 153, 255, .1),
      100: const Color.fromRGBO(51, 153, 255, .2),
      200: const Color.fromRGBO(51, 153, 255, .3),
      300: const Color.fromRGBO(51, 153, 255, .4),
      400: const Color.fromRGBO(51, 153, 255, .5),
      500: const Color.fromRGBO(51, 153, 255, .6),
      600: const Color.fromRGBO(51, 153, 255, .7),
      700: const Color.fromRGBO(51, 153, 255, .8),
      800: const Color.fromRGBO(51, 153, 255, .9),
      900: const Color.fromRGBO(51, 153, 255, 1),
    };
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ukhan Tukka",
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFF495371, color),
        ),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          FeedBack.routeName: (context) => const FeedBack(),
          AboutUsScreen.routeName: (context) => const AboutUsScreen(),
        },
        home: AnimatedSplashScreen(
          duration: 1000,
          splash: Column(
            children: const [
              Image(
                image: AssetImage('images/nepal.png'),
                height: 80,
              ),
              Text(
                'Thulo Technology',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          nextScreen: const HomePage(),
          splashIconSize: 120,
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.fade,
          animationDuration: const Duration(seconds: 1),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mealmonkey/buttom_navigation.dart';
import 'package:lottie/lottie.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 100.0),

            // Start programme for Introduction Screen====================================
            child: IntroductionScreen(
              done: Text("DONE", style: TextStyle(
                    fontWeight: FontWeight.w800, color: Colors.deepOrange),
              ),
              //Start programme for Navigate introdurction screen=============
              onDone: () {
                Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => ButtomNav()));
              },
              //End programme for Navigate introdurction screen=============
              next: Text("NEXT", style: TextStyle(fontWeight: FontWeight.w800),
              ),
              showNextButton: true,
              skip: Text("SKIP", style: TextStyle(fontWeight: FontWeight.w800),
              ),
              showSkipButton: true,
              dotsDecorator: DotsDecorator(
                activeColors: [
                  Colors.blue,
                  Colors.deepOrange,
                  Colors.green
                ],
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                activeSize: Size(30, 10),
              ),

              pages: [

                PageViewModel(
                    image: Lottie.asset("assets/lottie/delevery.json"),
                    title: "Super Fast Delevery And \n Live Tracking",
                    body: "Real time tracking of your food on the app once you placed the order"),
                PageViewModel(
                    image: Lottie.asset("assets/lottie/order_now.json"),
                    title: "Find Food You Love",
                    body: "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"),
                PageViewModel(
                    image: Image.asset("assets/images/burgerking_logo.png"),
                    title: "Welcome our BurgerKing",
                    body: "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",

                ),

              ],
            ),
            //End programme for IntroDuctionScreen======================================================
          ),
        ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorize = [Colors.red, Colors.white];
    var colorizeTextstyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.w700);
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/olx.png'),
              SizedBox(
                height: 10,
              ),
              AnimatedTextKit(animatedTexts: [
                ColorizeAnimatedText("Buy or Sell",
                    textStyle: colorizeTextstyle, colors: colorize)
              ])
            ],
          ),
        ));
  }
}

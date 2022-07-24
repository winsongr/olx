import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx/screens/widgets/auth_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: SizedBox(width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: Get.width,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset("assets/olx.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Buy or Sell',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(child: AuthUi()),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'If you continue, you are accepting\nTerms and Conditions and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

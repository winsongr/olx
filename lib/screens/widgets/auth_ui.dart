import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:olx/screens/authentication/phoneauth_screen.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: Get.width * 0.6,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Get.to(() => PhoneAuthScreen());
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Continue With Phone",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
        ),
        SignInButton(Buttons.Google, onPressed: () {}),
        SignInButton(Buttons.Email, onPressed: () {})
      ],
    ));
  }
}

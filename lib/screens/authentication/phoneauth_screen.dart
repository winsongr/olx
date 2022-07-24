import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthScreen extends StatefulWidget {
  PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  var countrycodeController = TextEditingController(text: '+91');

  var phonenoController = TextEditingController();
  phoneAuth(number) {}
  String counterText = '0';
  bool validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red.shade200,
              child: Icon(
                CupertinoIcons.person_alt_circle,
                color: Colors.red,
                size: 60,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Enter your Phone number",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'We will Send OTP to this Number',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: countrycodeController,
                    enabled: false,
                    decoration: InputDecoration(labelText: 'Country'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    autofocus: true,
                    maxLength: 10,
                    onChanged: ((value) {
                      setState(
                        () {
                          counterText = value.length.toString();
                        },
                      );
                      if (value.length == 10) {
                        setState(() {
                          validate = true;
                        });
                      } else {
                        validate = false;
                      }
                    }),
                    controller: phonenoController,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 20, top: 21),
                        labelText: 'Number',
                        counterText: '$counterText/10',
                        labelStyle: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12),
        child: AbsorbPointer(
          absorbing: validate ? false : true,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: validate
                    ? MaterialStateProperty.all(Colors.cyan)
                    : MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              String numb = countrycodeController.text + phonenoController.text;
              phoneAuth(numb);
              Get.dialog(
                AlertDialog(content: Row(children: [
                  CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),),SizedBox(width: 20,),Text("Please Wait!")
                ]),),barrierDismissible: false
                );
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Next',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

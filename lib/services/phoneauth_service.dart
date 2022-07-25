import 'package:firebase_auth/firebase_auth.dart';

class PhoneAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> verifyPhoneNo(number) async {
    final PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential credential) async {
      await auth.signInWithCredential(credential);
    };
    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        print('The phone no is invalid');
      }

      print('the error is ${e.code}');
    };

    final PhoneCodeSent codeSent =(String verId ,int resendToken)async{
      
    };
  }
}

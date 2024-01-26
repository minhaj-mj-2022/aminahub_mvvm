import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view/home_screen/home_scrn.dart';
import 'package:aminahub/view/sign_in_screen/components/sign_in_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInViewModel extends StatefulWidget {
  const SignInViewModel({Key? key}) : super(key: key);

  @override
  State<SignInViewModel> createState() => _SignInViewModelState();
}

class _SignInViewModelState extends State<SignInViewModel> {
  Future<void> _handleGoogleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);

      final User? user = authResult.user;

      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    } catch (e) {
      if (kDebugMode) {
        print("Error during Google Sign In: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getSrnWidth(70)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getSrnWidth(70),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getSrnHeight(10)),
                const SignInForm(),
                SizedBox(height: getSrnHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => _handleGoogleSignIn(context),
                      child: const Text("Sign In with Google"),
                    ),
                  ],
                ),
                SizedBox(height: getSrnHeight(30)),
                //const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

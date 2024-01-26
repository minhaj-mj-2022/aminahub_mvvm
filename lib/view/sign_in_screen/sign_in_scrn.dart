import 'package:aminahub/view_model/sign_in_view_mdl.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = "/SignInScreen";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const SignInViewModel(),
    );
  }
}

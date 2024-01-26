import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/constant.dart';
import 'package:aminahub/utils/keyboard.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view/home_screen/home_scrn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  var emailAddress;
  var password;
  bool? remember = false;
  final List<String?> errors = [];

  void showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text("Loading..."),
            ],
          ),
        );
      },
    );
  }

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  Future<void> _signIn() async {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {});
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      Navigator.pushNamed(context, HomeScreen.routeName);
    } catch (e) {
      print(e);

      // Show the toast message
      Fluttertoast.showToast(
        msg: 'Wrong email or password',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getSrnHeight(5)),
          buildPasswordFormField(),
          SizedBox(height: getSrnHeight(5)),
          //  Row(
          //  children: [
          // Checkbox(
          //   value: remember,
          //   activeColor: kPrimaryColor,
          //   onChanged: (value) {
          //     setState(() {
          //       remember = value;
          //     });
          //   },
          // ),
          //const Text("Remember me"),
          //const Spacer(),
          // GestureDetector(
          //   onTap: () => Navigator.pushNamed(
          //       context, ForgotPasswordScreen.routeName),
          //   child: const Text(
          //     "Forgot Password",
          //     style: TextStyle(decoration: TextDecoration.underline),
          //   ),
          // )
          //],
          // ),
          // FormError(errors: errors),
          SizedBox(height: getSrnHeight(10)),
          PrimaryBtn(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                showLoadingDialog();
                await Future.delayed(Duration(seconds: 3));
                Navigator.of(context, rootNavigator: true).pop();

                KeyboardUtil.hideKeyboard(context);
                _signIn();
                KeyboardUtil.hideKeyboard(context);
              }
            },
            btnText: 'Continue',
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 3) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "error";
        } else if (value.length < 3) {
          addError(error: kShortPassError);
          return "Please Enter Passeord with 6 or more characters";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => emailAddress = newValue,
      onChanged: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return;
        }
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "Please Enter your email";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "Invalid email. eg; aminahub@example.com";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}

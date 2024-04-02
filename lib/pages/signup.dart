// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/utils/color_utils.dart';
import '../reusable_widgets/reusable_widget.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringtocolor("FFB996"),
              hexStringtocolor("FFB996"),
              hexStringtocolor("FFB996"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 130,
            ),
            reusableTextField(
              "Enter Username",
              Icons.person_outlined,
              false,
              _usernameTextController,
            ),
            const SizedBox(
              height: 20,
            ),
            reusableTextField(
              "Enter emailId",
              Icons.email_outlined,
              false,
              _emailTextController,
            ),
            const SizedBox(
              height: 20,
            ),
            reusableTextField(
              "Enter password",
              Icons.lock_outline,
              false,
              _passwordTextController,
            ),
            const SizedBox(
              height: 20,
            ),
            signInsignUpButton(
              context,
              false,
              () {
                // FirebaseAuth.instance
                //     .createUserWithEmailAndPassword(
                //         email: _emailTextController.text,
                //         password: _passwordTextController.text)
                //     .then((value) {
                //   print("Created New Account");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
                // }).onError((error, stackTrace) {
                //   print("Error ${error.toString()}");
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}

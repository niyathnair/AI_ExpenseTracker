import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services.dart package

// import 'pages/credit.dart';
import 'pages/login.dart';
import 'pages/signin.dart';

void main() {
  // Hide the status bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'pages/login_page.dart'; // Import your login page

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(), // Change to LoginPage instead of WeatherPage
//     );
//   }
// }

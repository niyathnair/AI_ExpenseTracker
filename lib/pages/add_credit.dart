import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AddCredit extends StatelessWidget {
  const AddCredit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBE4D4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Card for Lottie animation and text "322"
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      // Lottie animation for purse
                      Lottie.asset(
                        'assets/credit.json',
                        width: 100, // Set the width of the Lottie animation
                      ),
                      const SizedBox(
                          width: 20), // Spacer between the animation and text
                      // Text displaying the number 322
                      const Text(
                        '₨ 5000',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Spacer between the cards
              // Card for TextFormField
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Amount credited",
                      filled: true,
                      fillColor: const Color.fromRGBO(
                          119, 221, 119, 0.4666666666666667),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors
                              .transparent, // Set the border color to transparent
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddCredit()),
          );
        },
        backgroundColor: const Color.fromARGB(236, 255, 209, 134),
        child: const Icon(
          EvaIcons.checkmark,
          color: Colors.white,
        ),
      ),
    );
  }
}

// You need to define AddDebit class or import it if it's defined elsewhere.

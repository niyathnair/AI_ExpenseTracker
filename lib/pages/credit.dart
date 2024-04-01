import 'package:flutter/material.dart';
import 'package:flutterapp/models/weather_model.dart';
import 'package:flutterapp/services/weather_services.dart';
import 'package:lottie/lottie.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'add_credit.dart';

class CreditPage extends StatefulWidget {
  const CreditPage({Key? key}) : super(key: key);

  @override
  State<CreditPage> createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {
  //api key
  final _weatherService = WeatherService('21ce8f60a969ebc630924b7fb33e1329');
  Weather? _weather;

  // fetch weather
  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  //init state
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 202, 215),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Money",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                          fontSize: 40, // Set the font size to 40
                          color: Color.fromARGB(236, 104, 144, 213), // Set the text color
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Lost!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                          fontSize: 40, // Set the font size to 40
                          color: Color.fromARGB(236, 255, 209, 134), // Set the text color
                        ),
                      ),
                    ),
                  ],
                ),
                Lottie.asset('assets/debit.json'),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddCredit()),
                );
              },
              backgroundColor: const Color.fromARGB(236, 255, 209, 134),
              child: const Icon(
                EvaIcons.plus,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

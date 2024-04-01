import 'package:flutter/material.dart';
import 'package:flutterapp/models/weather_model.dart';
import 'package:flutterapp/pages/add_debit.dart';
import 'package:flutterapp/services/weather_services.dart';
import 'package:lottie/lottie.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class DebitPage extends StatefulWidget {
  const DebitPage({Key? key}) : super(key: key);

  @override
  State<DebitPage> createState() => _DebitPageState();
}

class _DebitPageState extends State<DebitPage> {
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

  // // weather animations
  // String getWeatherAnimation(String? mainCondition) {
  //   if (mainCondition == null) return 'assets/credit.json';
  //   switch (mainCondition.toLowerCase()) {
  //     case 'clouds':
  //     case 'mist':
  //     case 'smoke':
  //     case 'haze':
  //     case 'dust':
  //     case 'fog':
  //       return 'assets/debit.json';
  //     case 'rain':
  //     case 'drizzle':
  //     case 'shower rain':
  //       return 'assets/credit.json';
  //     case 'thunderstorm':
  //       return 'assets/debit.json';
  //     case 'clear':
  //       return 'assets/credit.json';
  //     default:
  //       return 'assets/debit.json';
  //   }
  // }

  @override
  //init state
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBE4D4),
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
                        "Received",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                          fontSize: 40, // Set the font size to 40
                          color: Color.fromARGB(255, 159, 218, 171), // Set the text color
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Money!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                          fontSize: 40, // Set the font size to 40
                          color: Color.fromARGB(236, 255, 209, 134), // Set the text color
                        ),
                      ),
                    ),
                  ],
                ),
                Lottie.asset('assets/credit.json'),
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
                  MaterialPageRoute(builder: (context) => const AddDebit()),
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

import 'package:flutter/material.dart';
import 'package:temperature/temperature_screens/celcius_to_farh.dart';
import 'farh_to_celcius.dart';

class temperatureScreen extends StatefulWidget {
  const temperatureScreen({super.key});

  @override
  State<temperatureScreen> createState() => _temperatureScreenState();
}

class _temperatureScreenState extends State<temperatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.black,
        title: const Text(
          "Temperature Conversion",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Choose the temperature to convert in ",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CelsiusToFahrenheitConverter()));
                      },
                      child: Text("C to F"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FahrenheitToCelsiusConverter(),
                          ),
                        );
                      },
                      child: Text('F to C'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

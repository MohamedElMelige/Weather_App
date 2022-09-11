import 'package:flutter/material.dart';

import 'weather_body.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: EdgeInsets.only(),
      ),
      body: const WeatherWidget(),
    );
  }
}
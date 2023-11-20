import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/addiotional_info.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          '300 F',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),
                        SizedBox(height: 16),
                        Icon(
                          Icons.cloud,
                          size: 64,
                        ),
                        Text(
                          'Rain',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Weather Forecast',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              HourlyForecastItem(),
              HourlyForecastItem(),
              HourlyForecastItem(),
              HourlyForecastItem(),
              HourlyForecastItem(),
            ]),
          ),
          const SizedBox(height: 20),
          const Text(
            'Additional Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AdditionalInfo(),
              AdditionalInfo(),
              AdditionalInfo(),
            ],
          )
        ]),
      ),
    );
  }
}

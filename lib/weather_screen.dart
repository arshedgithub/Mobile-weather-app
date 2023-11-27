import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_info.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

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
                          '300K',
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
          const SizedBox(height: 15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              HourlyForecastItem(
                time: '00:00',
                icon: Icons.cloud,
                temperature: '298.20K',
              ),
              HourlyForecastItem(
                time: '03:00',
                icon: Icons.cloud,
                temperature: '300.20K',
              ),
              HourlyForecastItem(
                time: '06:00',
                icon: Icons.sunny,
                temperature: '301.79K',
              ),
              HourlyForecastItem(
                time: '09:00',
                icon: Icons.sunny,
                temperature: '304.20K',
              ),
              HourlyForecastItem(
                time: '12:00',
                icon: Icons.cloud,
                temperature: '301.39K',
              ),
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
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AdditionalInfo(
                icon: Icons.water_drop,
                label: 'Humidity',
                value: '91',
              ),
              AdditionalInfo(
                icon: Icons.air,
                label: 'Wind speed',
                value: '7.5',
              ),
              AdditionalInfo(
                icon: Icons.beach_access,
                label: 'Pressure',
                value: '1000',
              ),
            ],
          )
        ]),
      ),
    );
  }
}

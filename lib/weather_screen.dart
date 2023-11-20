import 'dart:ui';
import 'package:flutter/material.dart';

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
          Row(children: [
            Card(
              elevation: 6,
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Text(
                      '03.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Icon(
                      Icons.cloud,
                      size: 32,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '320.18',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 6,
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Text(
                      '03.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Icon(
                      Icons.cloud,
                      size: 32,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '320.18',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 6,
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Text(
                      '03.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Icon(
                      Icons.cloud,
                      size: 32,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '320.18',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 6,
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Text(
                      '03.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Icon(
                      Icons.cloud,
                      size: 32,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '320.18',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Fuwu App')),
      body: const Center(child: Text('Welcome to My Fuwu!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when button is pressed
          Navigator.of(context).push(
           MaterialPageRoute(builder: (context) => const SplashScreen()),
          );
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
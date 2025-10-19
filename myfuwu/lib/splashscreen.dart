import 'package:flutter/material.dart';
import 'package:myfuwu/registerpage.dart';
import 'main.dart';

void main() {
  runApp(const MainApp());
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).push((MaterialPageRoute<void>(builder: (context) => Registerpage())));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Image.asset(
                'assets/images/myfuwu.png',
                width: 200,
                height: 200,
              ),
            ),
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}

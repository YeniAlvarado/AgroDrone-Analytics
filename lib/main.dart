import 'package:agrodroneanalytics/screens/ExploreScreen.dart';
import 'package:agrodroneanalytics/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/explore': (context) => const ExploreScreen(),
        // '/history': (context) => const HistoryScreen(),
        // '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
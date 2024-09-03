import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app_ui/models/shop.dart';
import 'package:sushi_app_ui/screen/home_screen.dart';
import 'package:sushi_app_ui/screen/welcome_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sushi App UI',
      home: const WelcomeScreen(),
      routes: {
        "/welcomescreen": (context) => const WelcomeScreen(),
        "/homescreen": (context) => const HomeScreen(),
      },
    );
  }
}

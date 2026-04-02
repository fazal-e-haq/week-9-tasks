import 'package:custom_cards_app/Presentation/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomCardApp());
}

class CustomCardApp extends StatelessWidget {
  const CustomCardApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        themeMode: .dark,
        darkTheme: .dark(),
        home: HomeScreen());
  }
}

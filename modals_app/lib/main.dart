import 'package:flutter/material.dart';
import 'package:modals_app/Presentation/Screens/home_screen.dart';

void main() {
  runApp(const ModalsApp());
}

class ModalsApp extends StatelessWidget {
  const ModalsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      darkTheme: .dark(),
      themeMode: .dark,
      home: HomeScreen(),

    );

  }
}

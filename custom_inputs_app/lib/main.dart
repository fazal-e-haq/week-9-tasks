import 'package:custom_inputs_app/Presentation/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomInputField());
}

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: .dark,
      home:  HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text('Normal Custom text button'),
                CustomButton(onTap: () {}, text: 'C l i c k'),
                SizedBox(height: 30),
                Text('Custom button with icon'),
                CustomButton(
                  onTap: () {},
                  icon: Icon(Icons.ads_click),
                  text: 'C l i c k',
                ),
                SizedBox(height: 30),
                Text('Custom button with Circle Progress'),
                CustomButton(onTap: () {}, text: '', isLoading: true),
                SizedBox(height: 30),
                Text('Primary Custom text button'),
                PrimaryButton(onTap: () {}, text: 'H e l l o',),
                SizedBox(height: 30),
                Text('Outline Custom text button'),
                OutlineButton(onTap: () {}, text: 'T a p'),
                SizedBox(height: 30),
                Text('Hover  Custom text button for Web'),
                CustomButton(
                  onTap: () {},
                  text: 'Web Button',
                  isHovered: hovering,
                  onEnter: (_) => setState(() {
                    hovering = true;
                  }),
                  onExit: (_) => setState(() {
                    hovering = false;
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

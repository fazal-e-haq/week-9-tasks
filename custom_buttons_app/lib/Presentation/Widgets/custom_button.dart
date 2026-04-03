import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom basic button for mobile app and website
class CustomButton extends StatelessWidget {
  // Global Variables
  VoidCallback onTap;
  void Function(PointerEnterEvent)? onEnter;
  void Function(PointerExitEvent)? onExit;
  bool isLoading;
  String text;
  Color color;
  Icon? icon;
  BorderSide? side;
  double radius;
  Color textColor;
  bool isHovered;
  //Constructor
  CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isHovered = false,
    this.textColor = Colors.white,
    this.color = Colors.deepPurple,
    this.icon,
    this.side,
    this.radius = 10,
    this.isLoading = false,
    this.onEnter,
    this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: .uncontrolled,
      onEnter: (event) => onEnter,
      onExit: (event) => onExit,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: side,
          padding: isHovered
              ? EdgeInsetsGeometry.symmetric(horizontal: 35, vertical: 10)
              : EdgeInsetsGeometry.symmetric(horizontal: 22, vertical: 10),
        ),

        onPressed: onTap,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: isLoading
              ? SizedBox(
                  height: 18,
                  width: 18,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
              : Row(
                  mainAxisSize: .min,
                  children: [
                    if (icon != null) ...[
                      Icon(icon!.icon, size: 18),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      text,
                      style: TextStyle(color: textColor, fontWeight: .bold),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

// Custom Primary Button
class PrimaryButton extends CustomButton {
  PrimaryButton({super.key, required super.onTap, required super.text})
    : super(color: Colors.blue, textColor: Colors.white);
}

// Custom Outline Button
class OutlineButton extends CustomButton {
  OutlineButton({super.key, required super.onTap, required super.text})
    : super(
        side: BorderSide(color: Colors.white),
        color: Colors.transparent,
      );
}

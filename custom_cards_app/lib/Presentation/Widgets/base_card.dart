import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  BaseCard({
    super.key,
    required this.child,
    this.color,
    this.elevation = 5,
    this.borderRadius = 20,
  });
  double elevation;
  Color? color;
  double borderRadius;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            blurRadius: elevation,
            offset: Offset(0, 5),
            spreadRadius: 1,
          ),
        ],
        borderRadius: .circular(borderRadius),
      ),
      child: Padding(padding: const EdgeInsets.all(8.0), child: child),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatefulWidget {
  StatsCard({
    super.key,
    this.gradient,
    required this.subtitle,
    required this.title,
    required this.icon,
    required this.heading,
  });
  Gradient? gradient;
  String heading;
  Icon icon;
  String title;
  String subtitle;

  @override
  State<StatsCard> createState() => _StatsCardState();
}

class _StatsCardState extends State<StatsCard> {
  bool isTaped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          isTaped = !isTaped;
        });
      },
      child: AnimatedContainer(
        width: MediaQuery.widthOf(context) / 1.05,
        curve: Curves.bounceIn,
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
          gradient: widget.gradient,
          borderRadius: .circular(30),
          border: isTaped
              ? Border.all(color: Colors.white, width: 3, style: .solid)
              : Border.all(color: Colors.transparent, width: 0),
          boxShadow: [
            isTaped
                ? BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 0),
                    blurRadius: 0,
                    spreadRadius: 0,
                  )
                : BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                widget.heading,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .w500,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: .w500,
                      fontSize: 30,
                    ),
                  ),
                  widget.icon,
                ],
              ),
              Text(
                widget.subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .w300,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

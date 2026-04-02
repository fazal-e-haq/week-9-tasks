import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  UserCard({
    super.key,
    required this.color,
    this.borderRadius = 20,
    this.image,
    required this.name,
    required this.address,
    required this.age,
    required this.dateOfBirth,
    required this.nationality,
  });
  List<Color> color;
  double borderRadius;
  var image;
  final String name;
  final age;
  final String address;
  final String dateOfBirth;
  final String nationality;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.widthOf(context) / 1.3,
      decoration: BoxDecoration(

        gradient: LinearGradient(colors: color),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
        borderRadius: .circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 2),
        child: Column(
          children: [
            Icon(Icons.person_pin, size: 100),
            Text('$name', style: TextStyle(fontWeight: .bold, fontSize: 25)),
            Text('example@gmail.com', style: TextStyle(fontSize: 12)),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text('Age : $age', style: TextStyle(fontSize: 15)),
                Text(
                  'Date of Birth : $dateOfBirth',
                  style: TextStyle(fontSize: 15),
                ),
                Text('Adress : $address', style: TextStyle(fontSize: 15)),
                Text('Nationality : $nationality', style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Icon(Icons.snapchat, size: 40),
                Icon(Icons.snapchat, size: 40),
                Icon(Icons.snapchat, size: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

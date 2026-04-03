import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.widthOf(context) / 1.05,

      decoration: BoxDecoration(
        borderRadius: .circular(15),
        gradient: LinearGradient(
          colors: [Colors.white54, Colors.white10],
          begin: .topCenter,
          end: .bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(0, 5),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Image.network(
              width: 350,
              'https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmV3cyUyMHdlYnNpdGV8ZW58MHx8MHx8fDA%3D',
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Wednesday', style: TextStyle(fontSize: 12)),
                Text('21-02-23', style: TextStyle(fontSize: 12)),
              ],
            ),
            Divider(color: Colors.white),
            Text(
              'H e a d L i n e',
              textAlign: .start,
              style: TextStyle(fontSize: 18, fontWeight: .bold),
            ),
            Text(
              'Hey dribbblers! I would like to introduce you to my work related to typography. This is a mockup of an article cards intended for the online fashion magazine Louge. The cards were created after researching the fashion market and analyzing its main characteristics. I chose a light background, a distinct serif font and aesthetic photos. In the cards, I put the names, titles and pictures of the people who wrote the articles, as this increases the readers trust in the source.',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.person_pin, size: 35),
                SizedBox(width: 8),
                Text('F a z a l', style: TextStyle(fontWeight: .bold)),
              ],
            ),
            Align(
              alignment: .topRight,
              child: ElevatedButton(onPressed: () {}, child: Text('Read more')),
            ),
          ],
        ),
      ),
    );
  }
}

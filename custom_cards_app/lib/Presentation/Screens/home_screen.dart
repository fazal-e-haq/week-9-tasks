import 'package:custom_cards_app/Presentation/Widgets/news_card.dart';
import 'package:custom_cards_app/Presentation/Widgets/stats_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/base_card.dart';
import '../Widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Widget> stats = [
    StatsCard(
      icon: Icon(CupertinoIcons.globe, size: 80),
      title: 'Rs 25 m',
      subtitle: 'Rs 21,23,12.34',
      heading: 'Market Cap',
      gradient: LinearGradient(
        colors: [Colors.purple, Colors.deepPurple],
        begin: .topLeft,
        end: .bottomRight,
      ),
    ),
    StatsCard(
      icon: Icon(CupertinoIcons.globe, size: 80),
      title: 'Rs 25 m',
      subtitle: 'Rs 21,23,12.34',
      heading: 'Market Cap',
      gradient: LinearGradient(
        colors: [Colors.pink, Colors.pinkAccent.shade700],
        begin: .topLeft,
        end: .bottomRight,
      ),
    ),
    StatsCard(
      icon: Icon(CupertinoIcons.globe, size: 80),
      title: 'Rs 22 m',
      subtitle: 'Rs 41,23,12.34',
      heading: 'Market Cap',
      gradient: LinearGradient(
        colors: [Colors.lightBlue, Colors.blue],
        begin: .topLeft,
        end: .bottomRight,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: ListView(
          children: [
            BaseCard(
              elevation: 5,
              color: Colors.white12,
              borderRadius: 30,
              child: SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Center(child: Icon(Icons.snapchat, size: 150)),
                    SizedBox(height: 30),
                    Text(
                      'Lorem ipsum\ndolor sit amet,',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: .spaceEvenly,
                      children: [
                        Text(
                          'Rs 20',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          '★★★★',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    SizedBox(
                      width: .infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Add to cart'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            UserCard(
              color: [Colors.blue, Colors.white24],
              name: 'F a z a l',
              address: 'sgiuwdgiuagduiwgdiuagd',
              age: 20,
              nationality: 'Pakistan',
              dateOfBirth: '21-01-2023',
            ),
            SizedBox(height: 20),
            NewsCard(),
            SizedBox(height: 20),

            // buildSwipeToDelStates(),
          ],
        ),
      ),
    );
  }

  Expanded buildSwipeToDelStates() {
    return Expanded(
      child: ListView.builder(
        itemCount: stats.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Dismissible(
              key: UniqueKey(),
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: .circular(20),
                ),
                padding: .symmetric(horizontal: 12),
                child: Align(
                  alignment: .centerRight,
                  child: Icon(CupertinoIcons.delete, size: 50),
                ),
              ),
              onDismissed: (direction) {
                stats.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${stats.indexed} deleted')),
                );
              },
              child: stats[index],
            ),
          );
        },
      ),
    );
  }
}

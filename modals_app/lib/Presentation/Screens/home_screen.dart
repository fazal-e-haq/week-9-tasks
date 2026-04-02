import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      elevation: 8,
      backgroundColor: Colors.white10,
      useSafeArea: true,
      shape: OutlineInputBorder(borderRadius: .circular(20)),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.9,

          expand: false,
          builder: (context, scrollController) {
            return SizedBox(
              width: .infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    Divider(
                      endIndent: 140,
                      thickness: 6,
                      radius: .circular(20),
                      indent: 140,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'B o t t o m    S h e e t',
                      style: TextStyle(fontWeight: .bold, fontSize: 25),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 30,
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          return Text(
                            'Number : $index',
                            style: Theme.of(context).textTheme.bodyLarge,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void customAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Custom Dialog'),
          content: Text('Do you want to close this?'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('It is closed')));
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void customDialogWithForm(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Custom Dialog'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Add text',
              focusedBorder: OutlineInputBorder(borderRadius: .circular(10)),
              enabledBorder: OutlineInputBorder(borderRadius: .circular(10)),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Value Saved')));
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          width: .infinity,
          child: Column(
            children: [
              for (int i = 0; i < 15; i++)
                CheckboxListTile(
                  title: Text('You can check it.'),
                  value: false,

                  onChanged: (value) {
                    setState(() {
                      value = !value!;
                    });
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheets & Dialogs')),
      body: SafeArea(
        child: Padding(
          padding: .all(16),
          child: Column(
            children: [
              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showCustomBottomSheet(context);
                  },
                  child: Text('Show Bottom Sheet'),
                ),
              ),
              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                  onPressed: () {
                    customAlertDialog(context);
                  },
                  child: Text('Show Dialog'),
                ),
              ),
              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showFilterSheet(context);
                  },
                  child: Text('Show filter sheet'),
                ),
              ),
              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                  onPressed: () {
                    customDialogWithForm(context);
                  },
                  child: Text('Show Form Dialog'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

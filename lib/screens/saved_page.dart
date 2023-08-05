// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        title: const Text(
          'Saved',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'After you\'ve saved articles, you can find them here to read or listen to later or offline.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.red),
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/weekly');
                  },
                  icon: Icon(
                    Icons.weekend_outlined,
                    color: Colors.black,
                  ),
                ),
                label: "Weekly"),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/podcast');
                    },
                    icon: Icon(
                      Icons.podcasts,
                      color: Colors.black,
                    )),
                label: "Podcast"),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saved');
                  },
                  icon: Icon(
                    Icons.save_alt_rounded,
                    color: Colors.red,
                  ),
                ),
                label: "Saved"),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/explore');
                    },
                    icon: Icon(
                      Icons.explore,
                      color: Colors.black,
                    )),
                label: "Explore")
          ]),
    );
  }
}

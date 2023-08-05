import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),

          onPressed: () =>
              Navigator.pop(context), // Go back to the previous page
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle log in navigation
            },
            child: const Text(
              'Log In',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        children: [
          ListTile(
            title: const Text('Display'),
            onTap: () {
              // Open the display settings page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DisplaySettingsPage(),
                ),
              );
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1, // Reduce height of the Divider
          ),
          ListTile(
            title: const Text('Text size'),
            onTap: () {
              // Open the text size settings page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextSizeSettingsPage(),
                ),
              );
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Download new editions'),
            trailing: Switch(
              value: false,
              onChanged: (newValue) {
                // Handle download new editions settings change
              },
            ),
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Background downloads'),
            onTap: () {
              // Open the background downloads settings page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BackgroundDownloadsSettingsPage(),
                ),
              );
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Wi-Fi'),
            onTap: () {
              // Handle Wi-Fi action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Notifications'),
            onTap: () {
              // Handle notifications action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              // Handle about action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Terms of use'),
            onTap: () {
              // Handle terms of use action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Privacy'),
            onTap: () {
              // Handle privacy action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          ),
          ListTile(
            title: const Text('Contact us'),
            onTap: () {
              // Handle contact us action
            },
            contentPadding: EdgeInsets.zero, // Remove top and bottom padding
          ),
          const Divider(
            thickness: 2,
            height: 1,
          )
        ],
      ),
    );
  }
}

class DisplaySettingsPage extends StatelessWidget {
  const DisplaySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Settings'),
      ),
      body: const Center(
        child: Text('Display Settings Page'),
      ),
    );
  }
}

class TextSizeSettingsPage extends StatelessWidget {
  const TextSizeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Size Settings'),
      ),
      body: const Center(
        child: Text('Text Size Settings Page'),
      ),
    );
  }
}

class BackgroundDownloadsSettingsPage extends StatelessWidget {
  const BackgroundDownloadsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background Downloads Settings'),
      ),
      body: const Center(
        child: Text('Background Downloads Settings Page'),
      ),
    );
  }
}

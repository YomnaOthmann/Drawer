import 'package:feedback/screens/about.dart';
import 'package:feedback/screens/help_screen.dart';
import 'package:feedback/screens/feedback_screen.dart';
import 'package:feedback/screens/home_screen.dart';
import 'package:feedback/screens/invite_firend.dart';
import 'package:feedback/screens/rate.dart';
import 'package:flutter/material.dart';

class LayuotScreen extends StatefulWidget {
  const LayuotScreen({super.key});

  @override
  State<LayuotScreen> createState() => _LayuotScreenState();
}

class _LayuotScreenState extends State<LayuotScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HelpScreen(),
    FeedbackScreen(),
    const Invite(),
    const RateApp(),
    const AboutUs()
  ];
  List<String> titles = [
    "Home",
    "Help",
    "Feedback",
    "Invite Friend",
    "Rate App",
    "About Us",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(titles[currentIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName: Text(
                "Yomna Othman",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.jpeg")),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Help"),
              onTap: () {
                onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("FeedBack"),
              onTap: () {
                onItemTapped(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Invite Friend"),
              onTap: () {
                onItemTapped(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Rate our App"),
              onTap: () {
                onItemTapped(4);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {
                onItemTapped(5);
              },
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }

  void onItemTapped(int index) {
    Navigator.pop(context);
    setState(() {
      currentIndex = index;
    });
  }
}

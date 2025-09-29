import 'package:flutter/material.dart';

void main() => runApp(const GRCApp());

class GRCApp extends StatelessWidget {
  const GRCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GRC Mobile",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("GRC"),
          bottom: const TabBar(
            labelColor: Colors.red,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.menu_book), text: "Courses"),
              Tab(icon: Icon(Icons.event_available), text: "Events"),
              Tab(icon: Icon(Icons.apartment), text: "About"), 
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                "WELCOME TO GLOBAL RECIPROCAL COLLEGES",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            CoursesPage(),
            EventsPage(),
            AboutPage(),
          ],
        ),
      ),
    );
  }
}

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});
  final courses = const [
    "College of Business Administration",
    "College of Entrepreneurship",
    "College of Accountancy",
    "College of Education",
    "College of Computer Studies"
  ];

  @override
  Widget build(BuildContext context) => ListView(
    children: courses
        .map((c) => ListTile(leading: const Icon(Icons.menu_book), title: Text(c)))
        .toList(),
  );
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});
  final events = const [
    "Foundation Day – Oct 15",
    "Sports Festival – Nov 5",
    "IT Week – Dec 10",
    "Christmas Celebration – Dec 20",
  ];

  @override
  Widget build(BuildContext context) => ListView(
    children: events
        .map((e) => ListTile(leading: const Icon(Icons.event_available), title: Text(e)))
        .toList(),
  );
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) => ListView(
    children: const [
      ListTile(
          leading: Icon(Icons.location_on),
          title: Text("ADDRESS"),
          subtitle: Text("GRC Building, 454, 1400 Rizal Ave Ext, Grace Park East, Caloocan, Metro Manila")),
      ListTile(
          leading: Icon(Icons.flag),
          title: Text("MISSION"),
          subtitle: Text("GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professionals through values-based quality education")),
      ListTile(
          leading: Icon(Icons.visibility),
          title: Text("VISION"),
          subtitle: Text("A global community of excellent individuals with values.")),
      ListTile(
          leading: Icon(Icons.star),
          title: Text("CORE VALUES"),
          subtitle: Text("God-Fearing, Reciprocating, Committing to Excellence.")),
      ListTile(
          leading: Icon(Icons.lightbulb),
          title: Text("PHILOSOPHY"),
          subtitle: Text("Touching Hearts, Renewing Minds, Transforming Lives.")),
    ],
  );
}

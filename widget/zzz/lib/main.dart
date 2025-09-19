import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';

void main() {
  runApp(HutechCampusApp());
}

class HutechCampusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUTECH Campus Info',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}

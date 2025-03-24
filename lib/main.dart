import 'package:flutter/material.dart';
import 'screens/main_activity.dart';

void main() {
  runApp(PageSwitchingApp());
}

class PageSwitchingApp extends StatelessWidget {
  const PageSwitchingApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainActivity(),
    );
  }
}

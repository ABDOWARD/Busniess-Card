import 'package:flutter/material.dart';
import 'package:toku/screens/family_members_page.dart';
import 'screens/home_screen.dart';
import 'screens/numbers_page.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

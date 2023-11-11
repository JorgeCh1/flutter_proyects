import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Revisar!!!!!
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'To do App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen());
  }
}
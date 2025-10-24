import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assesment/core/theme.dart';
import 'package:flutter_assesment/screen/homescreen.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_application/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop Application',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      routes: {
        HomeView.id : (context)=> const HomeView(),
      },
      initialRoute: HomeView.id,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}


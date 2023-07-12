import 'package:faceid/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(199, 154, 241, 150),
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(199, 154, 241, 110),
          )),
      debugShowCheckedModeBanner: false,
      home: const FaceId(),
    ),
  );
}

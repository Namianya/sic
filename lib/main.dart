import 'package:flutter/material.dart';
import 'package:sic/views/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.grey[200],
        appBarTheme: const AppBarTheme(
          color: Colors.green,
          elevation: 0,
        ),
      ),
      home: const SignInScreen(),
    );
  }
}

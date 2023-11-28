import 'package:flutter/material.dart';
import 'package:fly_with_flutter/login_screen.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fly Flutter",
      theme: ThemeData(primaryColor: Colors.blue[900]),
      home: LoginPage(),
    );
  }
}

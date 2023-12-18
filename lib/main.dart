import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_a_car/view/login_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: const Color.fromARGB(255, 58, 53, 66),
        ),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const LoginPage(),
      },
    );
  }
}

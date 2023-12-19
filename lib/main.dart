import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rent_a_car/controller/login_provider.dart';
import 'package:rent_a_car/view/login_page.dart';
import 'package:rent_a_car/view/widgets/bottom_nav.dart';

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
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => LoginProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: Color.fromARGB(238, 45, 42, 50),
          ),
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const LoginPage(),
          "/BottomNavBar": (context) => BottomNavBar()
        },
      ),
    );
  }
}

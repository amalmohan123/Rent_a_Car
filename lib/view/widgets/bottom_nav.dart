import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        width: size.width,
        height: size.height * .094,
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 91, 89, 101).withOpacity(0.25),
              spreadRadius: 15,
              blurRadius: 15,
              offset: const Offset(1, 1),
            )
          ],
        ),
        child: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(238, 45, 42, 50),
          color: const Color.fromARGB(255, 27, 26, 26),
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.ease,
          height: 75,
          items: [
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.history_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

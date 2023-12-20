import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/view/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignIn = true;
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello....,\nDrive into Happiness, \nCapture Memories',
                style: GoogleFonts.alata(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 295, top: 8),
                    child: IconButton(
                      icon: Icon(
                        isObscure
                            ? Icons.visibility
                            : Icons.visibility_off_rounded,
                        color: Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            isObscure = !isObscure;
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    isSignIn
                        ? CustomButton(
                            size: size,
                            buttonText: 'Sign Up',
                            onTap: () {
                              Navigator.pushNamed(context, '/BottomNavBar');
                            },
                          )
                        : Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgoat Password?',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 232, 65, 53)),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              CustomButton(
                                size: size,
                                buttonText: 'Sign In',
                                onTap: () {},
                              )
                            ],
                          ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isSignIn
                              ? 'Already have an account?'
                              : 'Don\'t have an account?',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSignIn = !isSignIn;
                            });
                          },
                          child: Text(
                            isSignIn ? 'Sign In' : 'Sign Up',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 232, 65, 53),
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(height: 18),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 45,
                        child: Image.asset(
                          'assets/image/2993685_brand_brands_google_logo_logos_icon.png',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mid_connect/components/text_field.dart';
import 'package:mid_connect/components/button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: 1.0,
                duration: Duration(milliseconds: 500),
                child: Image.asset(
                  'assets/MIDConnect_logo.jpg', // Replace with the path to your asset image
                  width: 300,
                  height: 225,
                ),
              ),
              Text(
                'Welcome back, you have been missed!',
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize:16.0,
                ),
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: emailTextController,
                hintText: 'Email',
                obscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
              ),
              MyTextField(
                controller: passwordTextController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 30.0),
              MyButton(
                onTap: () {},
                text: 'Sign In',
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register now!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
              ),
              Text(
                "MIDCONNECT",
                style: TextStyle(
                  color: Colors.deepPurple[700],
                  fontFamily: 'EBGaramond',
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

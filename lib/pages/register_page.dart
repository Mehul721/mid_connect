import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

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
                "Let's create an account for you!",
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
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
              ),
              MyTextField(
                controller: confirmPasswordTextController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),),
              const SizedBox(height: 20.0),
              MyButton(
                onTap: () {},
                text: 'Sign Up',
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.deepPurple[900],
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login here.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
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

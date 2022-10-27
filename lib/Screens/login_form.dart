import 'package:flutter/material.dart';
import 'package:hk_store/Screens/signup_form.dart';

import '../Comm/genTextFormField.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Title
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('HK Store Login',),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text('Login into your account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0
                ) ,
              ),
              const SizedBox(
                height: 50,
              ),
              // Logo
              Image.asset(
                  "assets/images/logo.png",
                height: 150,
                width: 150,
                filterQuality: FilterQuality.high,
              ),

              const SizedBox(
                height: 50,
              ),

              // Email address field
              GetTextFormField(
                icon: Icons.person,
                hintName: "Email Address",
                controller: TextEditingController()
              ),

              const SizedBox(
                height: 20,
              ),

              // Password field
              GetTextFormField(
                isObscureText: true,
                icon: Icons.person,
                hintName: "Password",
                controller: TextEditingController()
              ),

              const SizedBox(
                height: 30,
              ),

              // Login button
              Container(
                margin: const EdgeInsets.all(30.0),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {  },
                  child: const Text(
                      "Login",
                  style: TextStyle(
                      color: Colors.white,
                  fontSize: 30.0),
                  ),

                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),

              ),
              // Sign up link
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Does not have account?",
                    ),
                    TextButton(
                      onPressed:() {
                        Navigator.push(context,
                            MaterialPageRoute(builder:(_) => const SignupForm()));
                      },
                      child: const Text("Signup here"),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

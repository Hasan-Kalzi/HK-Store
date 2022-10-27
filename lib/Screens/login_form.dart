import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hk_store/Screens/signup_form.dart';
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
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0,
                    left: 20,
                    right: 20
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)
                      ),
                      borderSide: BorderSide(color: Colors.lightGreen
                      ),
                    ),
                    prefixIcon: Icon(
                        Icons.alternate_email_rounded
                    ),
                    hintText: "Email Address",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Password field
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0,
                    left: 20,
                    right: 20
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)
                      ),
                      borderSide: BorderSide(color: Colors.lightGreen
                      ),
                    ),
                    prefixIcon: Icon(
                        Icons.lock
                    ),
                    hintText: "Password",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
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
                            MaterialPageRoute(builder:(_) => SignupForm()));
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'login_form.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Title
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Create account HK Store"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text('Create a new account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0
                ) ,
              ),
              const SizedBox(
                height: 30,
              ),

              // First name field
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
                        Icons.person
                    ),
                    hintText: "First Name *",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Last name field
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
                        Icons.person_rounded
                    ),
                    hintText: "Last Name *",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                        Icons.alternate_email
                    ),
                    hintText: "Email address *",
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
                        Icons.lock_outline_rounded
                    ),
                    hintText: "Password *",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // Repeat Password field
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
                        Icons.password
                    ),
                    hintText: "Re-type Password *",
                    fillColor: CupertinoColors.systemGrey6,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),


              // text for obligatory
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "The password must consist of at least 8 characters.",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
              ),

              // Birthday Date
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0,
                    left: 20,
                    right: 20
                ),
                child: Center(
                  child: TextField(
                    controller: dateInput,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Your Birthday (Optional)", //label text of field
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1940),
                          lastDate: DateTime(2023)
                      );
                      if (pickedDate != null) {{
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          dateInput.text = formattedDate;
                          });
                        }
                      }
                    }
                  ),
                ),
              ),


              // Login Button
              Container(
                margin: const EdgeInsets.all(30.0),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0),
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

              // text for obligatory
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "* Mandatory field.",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ),

              // signup link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                  ),
                  TextButton(
                    onPressed:() {
                      Navigator.push(context,
                          MaterialPageRoute(builder:(_) => const LoginForm()));
                    },
                    child: const Text("Login here"),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}

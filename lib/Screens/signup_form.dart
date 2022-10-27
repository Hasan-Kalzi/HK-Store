import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Comm/genTextFormField.dart';
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
                height: 20,
              ),

              // First name field
              GetTextFormField(
                  icon: Icons.person,
                  hintName: "First Name *",
                  controller: TextEditingController()
              ),

              const SizedBox(
                height: 20,
              ),

              // Last name field
              GetTextFormField(
                icon: Icons.person,
                hintName: "Last Name *",
                controller: TextEditingController()
              ),

              const SizedBox(
                height: 20,
              ),

              // Email address field
              GetTextFormField(
                icon: Icons.alternate_email,
                hintName: "Email Address *",
                controller: TextEditingController(),
                textInputType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 20,
              ),

              // Password field
              GetTextFormField(
                icon: Icons.lock_outline_rounded,
                hintName: "Password *",
                controller: TextEditingController(),
                textInputType: TextInputType.visiblePassword,
              ),

              const SizedBox(
                height: 20,
              ),

              // Repeat Password field
              GetTextFormField(
                icon: Icons.password,
                hintName: "Repeat Password *",
                controller: TextEditingController(),
                textInputType: TextInputType.visiblePassword,
              ),

              const SizedBox(
                height: 20,
              ),

              // Phone Number
              GetTextFormField(
                icon: Icons.phone,
                hintName: "Phone Number",
                controller: TextEditingController(),
                textInputType: TextInputType.number,
              ),

              const SizedBox(
                height: 20,
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

import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  // Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      // Desigining code

      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          color: Colors.grey[200],
          height: 400,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SixeBox
                SizedBox(
                  height: 50,
                ),

                // Text-Logo
                Text(
                  "Signup",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),

                SizedBox(
                  height: 20,
                ),

                // Email Controllor
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      labelText: "Email",
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // Email
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      labelText: "Password",
                    ),
                  ),
                ),

                // SixeBox

                SizedBox(
                  height: 10,
                ),

                // New Password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      hintText: "password",
                      labelText: "Confirm Password",
                    ),
                  ),
                ),

                // SixeBox

                SizedBox(
                  height: 40,
                ),

                // Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: MaterialButton(
                    minWidth: 350,
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color.fromARGB(255, 0, 156, 5),
                    onPressed: () {},
                  ),
                ),

                // SixeBox

                SizedBox(
                  height: 20,
                ),

                // Text-Logo
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Already have an account Login Here",
                      style: TextStyle(fontSize: 12),
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}

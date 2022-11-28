import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Container(
          color: Colors.grey[200],
          height: 310,
          width: 350,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SixeBox
                SizedBox(
                  height: 20,
                ),

                // Text-Logo
                Text(
                  "kehnure",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                // SixeBox

                SizedBox(
                  height: 20,
                ),

                // Email
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      labelText: "Email",
                    ),
                  ),
                ),

                // SixeBox

                SizedBox(
                  height: 10,
                ),

                // Password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
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

                // Button
                MaterialButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: () {},
                ),

                // SixeBox

                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 1.0,
                          width: 50,
                          color: Colors.grey,
                        ),
                        Text(
                          "  or  ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.grey,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  height: 5,
                  color: Colors.white,
                  width: 350,
                ),

                SizedBox(
                  height: 6,
                ),

                MaterialButton(
                  child: Text(
                    "Register New Account",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  color: Color.fromARGB(255, 0, 156, 5),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

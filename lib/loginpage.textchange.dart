import 'package:flutter/material.dart';
import 'package:flutter_study1/home.dart';
import 'package:flutter_study1/signupPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  String username = "admin";
  String password = 'hiba1617';

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: GoogleFonts.satisfy(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome Back! Login With Your Credential!!',
                style: GoogleFonts.satisfy(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextField(
                  controller: user_controller,
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: pass_controller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {
                  if (username == user_controller.text &&
                      password == pass_controller.text) {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                },
                color: Colors.green,
                shape: const StadiumBorder(),
                child: const Text('Login'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                        TextSpan(text: "Dont Have an Account?"),
                        TextSpan(
                            text: "Sign Up!!",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))),
              Divider(thickness: 5,color: Colors.black,)
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueAccent,
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration',
                style: GoogleFonts.satisfy(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Enter the datas to SignUp!!',
                style: GoogleFonts.satisfy(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.password),
                      hintText: " Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {},
                color: Colors.green,
                shape: const StadiumBorder(),
                child: const Text('Login'),
              ),
              TextButton(
                  onPressed: () {},
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                        TextSpan(text: "Dont Have an Account"),
                        TextSpan(
                            text: "Sign Up!!",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])))
            ],
          )),
        ));
  }
}

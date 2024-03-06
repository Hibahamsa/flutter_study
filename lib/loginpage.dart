import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          elevation: 0,
        ),
        body: Center(
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
              TextField(),
              TextField(),
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
                  child: Text("Dont Have an Account? SignUp!"))
            ],
          ),
        ));
  }
}

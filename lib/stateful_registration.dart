import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study1/home.dart';

void main() {
  runApp(MaterialApp(
    home: Stateful_Registration(),
  ));
}



class Stateful_Registration extends StatefulWidget{
  @override
  State<Stateful_Registration> createState() => _Stateful_RegistrationState();
}

class _Stateful_RegistrationState extends State<Stateful_Registration> {
  final namecntrl = TextEditingController();

  final passcntrl = TextEditingController();

  final validkey = GlobalKey<FormState>();
  String? pwd;
  bool showpwd = true;


  // key for the form to validate its state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRATION PAGE"),

        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.arrow_back_ios,color: Colors.blueAccent,),
        elevation: 0,

      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(15),
            child: Form(
              key: validkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Registration Page",
                    style: TextStyle(fontSize: 35),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: showpwd,
                    obscuringCharacter: '*',
                    controller: passcntrl,
                    // value that we typed in formfield will stored in email
                    validator: (email){
                      if(email!.isEmpty || !email.contains('0') || !email.contains('.gmail.com')){
                        return "InValid email";

                      }

                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username"
                    ),
                  ),
                  const  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passcntrl,
                    // value that we typed in formfield will stored in email
                    validator: (password){
                      pwd = password;

                      if(password!.isEmpty || password.length > 6) {
                        return " Password must not be null or length should be greater than 6";

                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpwd == true){
                            showpwd = false;}
                          else{
                            showpwd = true;
                          }
                        });
                      },
                          icon: Icon(showpwd ==true? Icons.visibility_off_sharp
                          : Icons.visibility)),
                        border: OutlineInputBorder(),
                        hintText: "  Password"
                    ),

                  ),
                  const  SizedBox(
                    height: 15,
                  ),
                  TextFormField(

                    obscureText: showpwd,
                    obscuringCharacter: '*',
                    controller: passcntrl,



                    // value that we typed in formfield will stored in confirm password
                    validator: ( confirmpassword){

                      if (confirmpassword!.isEmpty  || pwd != confirmpassword) {
                        return " Password must be same";

                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(showpwd == true){
                              showpwd = false;}
                            else{
                              showpwd = true;
                            }
                          });
                        },
                            icon: Icon(showpwd ==true? Icons.visibility_off_sharp
                                : Icons.visibility)),





                        border: OutlineInputBorder(),
                        hintText: "Confirm Password"
                    ),

                  ),
                  MaterialButton(onPressed: (){
                    final valid  = validkey.currentState!.validate();
                    if(valid == true){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("InValid Email/Password")
                          ));
                    }
                  },
                    color: Colors.green,
                    shape: StadiumBorder(),
                    child: const Text("Login"),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text("Not a User? Registered Here!!")),


                ],
              ),
            )
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Splash(),));

}


class Splash extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[


        // Icon(Icons.dark_mode,
        //   size: 100,
        //   color: Colors.white,
        // ),
         // Image(image: AssetImage("assets/icons/home.png",), height: 300, width: 300,),
         // Image.network("src"),
          Image.asset("assets/icons/home.png"),



          Text(
             "AppName",
            // style: TextStyle(
            //   fontSize: 30,
            //   color: Colors.white,
            //   fontWeight: FontWeight.bold),
            style:  GoogleFonts.greatVibes(
              fontSize: 70,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ) ,
    ),
    );
  }
}
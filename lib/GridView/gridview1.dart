import 'package:flutter/material.dart';

class Gridview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      ),
    );
  }
}

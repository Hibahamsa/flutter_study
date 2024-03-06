import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:ListView3 () ,
  )
  );
}
class  ListView3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
    body: ListView.builder(
      itemCount: 5,
        itemBuilder: (context, index) => Card(
    child: Center(
      child: Text(
        "Hello",
        style: TextStyle(fontSize: 20),),
    ),
    )
    )
    );
  }
}

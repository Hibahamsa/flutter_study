import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:ListView4 () ,
  )
  );
}
class ListView4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(
        //  childrenDelegate: SliverChildListDelegate(
          //[
        //Card(child: Center(child: Text("Hello"),),),
       // Card(child: Center(child: Text("Hello"),),),
       // Card(child: Center(child: Text("Hello"),),),
      //  Card(child: Center(child: Text("Hello"),),),
     // ]
       //List.generate(10, (index) => Card(child: Center(child: Text("Hello"),),),)
  childrenDelegate:
        SliverChildBuilderDelegate(
                (context, index) =>
                    Card(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("url"),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Grapes"),
                              Text("2 kg"),
                              Text("Price  :\$100/kg")
                            ],
                          ),
                          MaterialButton(
                            onPressed: (){},
                            shape: StadiumBorder(),
                            color: Colors.blue,
                            minWidth: 120,
                            height: 40,
                          child: Text("Add to Card",
                            style: TextStyle(color: Colors.white),),
                          )
                        ],
                    )
                    ),
    )
    ),
    );
  }
}

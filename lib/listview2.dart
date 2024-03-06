import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}
class  ListView2 extends StatelessWidget {

var name=[
  "Yazi",
  "Farhan",
  "Ramiz",
  "Nihal",
  "Rijitha",
  "Nasmi",
  "Amir"
];
var message=[
  "Hello",
  "How are u",
  "Where r u",
  "Thank u",
  "Welcome",
  "Take care",
  "Good night"
];
//var date_time=[
  //11.00,
  //12.00,
  //01.00,
  //02.00,
  //03.00,
  //04.00
//];

  var date_time=[
    "1/11/2023",
    "yestueday",
    "11:30 pm ",
    "today",
    "2/11/2023",
    "12:30 pm",
    "1:00 am",
  ];
  var images=["https://tse1.mm.bing.net/th?id=OIP.eLdfkv0i89EHLK4sXDFRgwHaEA&pid=Api&P=0&h=220",
"https://images.search.yahoo.com/search/images;_ylt=AwrOuEcQwsllhXgS0l1XNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZAMEc2VjA3BpdnM-?p=childrens&fr2=piv-web&type=E210US714G0&fr=mcafee",
    "https://images.search.yahoo.com/images/view;_ylt=AwrjfNUVwslltuchmVCJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzI5NThkNGNlZDIxMzg0YzY5ZjFiYmQ0Y2VmYTJlYTk5BGdwb3MDODEEaXQDYmluZw--?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dchildrens%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26nost%3D1%26tab%3Dorganic%26ri%3D81&w=4512&h=3012&imgurl=1.bp.blogspot.com%2F-Qu5ulFhGEqs%2FXu-8_a8k20I%2FAAAAAAAAAH4%2F54VAbdPgfIUT39TFzd21Pr29dOozB5sSgCK4BGAsYHg%2Fs4512%2FAdobeStock_293343160.jpeg&rurl=https%3A%2F%2Fwww.sfcsblog.com%2F2020%2F06%2Fparent-resources-solano-family.html&size=888.5KB&p=childrens&oid=2958d4ced21384c69f1bbd4cefa2ea99&fr2=piv-web&fr=mcafee&tt=Solano+Family+and+Children%26%2339%3Bs+Services%3A+Parent+Resources+-+Solano+Family+%26+Children%26%2339%3Bs+Services&b=61&ni=21&no=81&ts=&tab=organic&sigr=sORpQxTkXKDi&sigb=nwUtd.4MEqPJ&sigi=ZXo1Y8TXuBY5&sigt=a.D4iAQ.AN5W&.crumb=5B7VR6W5CYi&fr=mcafee&fr2=piv-web&type=E210US714G0",
    "https://images.search.yahoo.com/search/images;_ylt=AwrOuEcQwsllhXgS0l1XNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZAMEc2VjA3BpdnM-?p=childrens&fr2=piv-web&type=E210US714G0&fr=mcafee ",
    " https://images.search.yahoo.com/images/view;_ylt=AwrjfNUVwslltuchuVCJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzY1M2M3OGU1YWIwNmM4Mjk2YmYzOTc3OWQ2ZjI4ODJiBGdwb3MDMTEzBGl0A2Jpbmc-?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dchildrens%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26nost%3D1%26tab%3Dorganic%26ri%3D113&w=1048&h=1024&imgurl=1.bp.blogspot.com%2F-aUl4A1RzEl4%2FTpBCuRtVoiI%2FAAAAAAAAAAQ%2FFf_ZsnZ1Cco%2Fs1600%2Fchildren.gif&rurl=https%3A%2F%2Fforchildrens93.blogspot.com%2F2011%2F12%2Flos-numeros-los-ninos-cuando-son.html&size=485.6KB&p=childrens&oid=653c78e5ab06c8296bf39779d6f2882b&fr2=piv-web&fr=mcafee&tt=Childrens+%3D%29&b=61&ni=21&no=113&ts=&tab=organic&sigr=fg1L_vBPWnMH&sigb=XVERhQ4FS1Nh&sigi=_v2FhcmVJisP&sigt=5imxXfHgQNFJ&.crumb=5B7VR6W5CYi&fr=mcafee&fr2=piv-web&type=E210US714G0 ",
    " https://images.search.yahoo.com/images/view;_ylt=AwrjfNUSwsllov0hYTyJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzBmYmI5ZjU2MTkxNDg4NDA0N2ZkZWZlZTQxNDU1YWFhBGdwb3MDNjIEaXQDYmluZw--?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dchildrens%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D62&w=2000&h=1000&imgurl=s-i.huffpost.com%2Fgen%2F1649604%2Fimages%2Fo-KIDS-ARTS-facebook.jpg&rurl=https%3A%2F%2Fwww.huffingtonpost.com%2Fjulissa-bonfante%2Fhow-exposing-your-kids-to_b_4859617.html&size=325.0KB&p=childrens&oid=0fbb9f561914884047fdefee41455aaa&fr2=piv-web&fr=mcafee&tt=How+Exposing+Your+Kids+to+the+Arts+Can+Be+a+Game+Changer+%7C+HuffPost&b=0&ni=21&no=62&ts=&tab=organic&sigr=1b4NrHY0Qn4z&sigb=G5qA4d_ySz5q&sigi=Yh1sdiAIwioj&sigt=3GcheTn0.5Ov&.crumb=5B7VR6W5CYi&fr=mcafee&fr2=piv-web&type=E210US714G0",
    "https://images.search.yahoo.com/images/view;_ylt=AwrjfNUVwslltuchilCJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzQ0ZjI4ZjE0NjkzM2QwYTQ3YTYwYmU1YzdiMWFmMzAwBGdwb3MDNjYEaXQDYmluZw--?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dchildrens%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26nost%3D1%26tab%3Dorganic%26ri%3D66&w=1600&h=1067&imgurl=4.bp.blogspot.com%2F_0WFowfEw85k%2FTHx6p4RGWNI%2FAAAAAAAAAHA%2FR5h5kbat4k8%2Fs1600%2FIMG_8987%2B3.jpg&rurl=http%3A%2F%2Fcyndifrithphotography.blogspot.com%2F2010%2F08%2Fparker-3-years-oldaustin-tx-childrens.html&size=151.6KB&p=childrens&oid=44f28f146933d0a47a60be5c7b1af300&fr2=piv-web&fr=mcafee&tt=Cyndi+Frith+Photography+-+Newborn+Infant+Baby+Child+Children%26%2339%3Bs+Photographer+Austin+TX%3A+Parker%2C+3+...&b=61&ni=21&no=66&ts=&tab=organic&sigr=OvypCvuZMHGc&sigb=SuXbxZQrytvM&sigi=.P42ipsz0DvG&sigt=eDG2Kh0YCJnV&.crumb=5B7VR6W5CYi&fr=mcafee&fr2=piv-web&type=E210US714G0 "

  ];
  var icons =[

    Icon(Icons.done),
   Icon( Icons.done_all,color:Colors.blue),
  Icon(  Icons.done_all,color:Colors.blue),
  Icon(  Icons.done_all,color:Colors.blue),
  Icon(  Icons.done_all,color:Colors.blue),
  Icon(  Icons.done),
  Icon(  Icons.done_all,color:Colors.blue)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView 2"),),
      body: ListView(
        children: List.generate(7,
                (index) => ListTile(
          leading: CircleAvatar(
            backgroundImage:NetworkImage(images[index]) ,
            //backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
           // child: Icon(Icons.person),
          ),
          title: Text(name[index]),
          subtitle: Row(
            children: [
              //Icon(icons[index]),
              icons[index],
              Text(message[index]),
            ],
          ),
          trailing: Text(date_time[index]),
        )),
      ),
    );
  }
}

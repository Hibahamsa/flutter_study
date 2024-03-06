import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        elevation: 0,
        title: Text("MY Contacts"),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Yazi"),
              subtitle: Text('9656311617'),
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage(
                    "https://images.search.yahoo.com/images/view;_ylt=Awrjfk4y86tlpyY08sWJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzY0NTQ2NTVhN2NlODhlMjNkMTdlZmEzNDZmYTBjZTA5BGdwb3MDMgRpdANiaW5n?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3D17%2Brich%2Band%2Bfamous%26ei%3DUTF-8%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dp%253As%252Cv%253Ai%252Cm%253Asb-top%26tab%3Dorganic%26ri%3D2&w=2048&h=1536&imgurl=static.independent.co.uk%2Fs3fs-public%2Fthumbnails%2Fimage%2F2015%2F06%2F06%2F15%2FChris-Pratt.jpg&rurl=http%3A%2F%2Fwww.independent.co.uk%2Fnews%2Fpeople%2F17-rich-and-famous-people-who-were-once-homeless-a7350941.html&size=337.6KB&p=17+rich+and+famous&oid=6454655a7ce88e23d17efa346fa0ce09&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&fr=mcafee&tt=17+rich+and+famous+people+who+were+once+homeless+%7C+The+Independent&b=0&ni=225&no=2&ts=&tab=organic&sigr=ELxStWo6AYlH&sigb=rjYnRAX4vtt8&sigi=kuRFZCv7ckeY&sigt=eCB4IRZ20fTx&.crumb=5B7VR6W5CYi&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&type=E210US714G0"),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Farhan"),
              subtitle: Text('9656311610'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Nasmi"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Nihal"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Raamiz"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rijitha"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Hamsa"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.brown,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Fousiya"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Junaid"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Sana"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rishad"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Aysha"),
              subtitle: Text('9656351610'),
              leading: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                backgroundImage: NetworkImage(""),
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
        ],
      ),
    );
  }
}

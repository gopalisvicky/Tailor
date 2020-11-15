import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Screens/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText1: TextStyle(
                fontSize: 20, color: Colors.black, fontFamily: 'Raleway-Bold')),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(35))),
        primaryColor: Colors.green,
      ),
    ),
  );
}

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      loaderColor: Colors.transparent,
      navigateAfterSeconds: new listdata(),
      image: Image(
        image: AssetImage('Asset/images/tilor.jpg'),
      ),
      backgroundColor: Colors.white,
      photoSize: 200.0,
    );
  }
}

// StreamBuilder(
// stream: Firestore.instance.collection("custData").snapshots(),
// builder: (ctx, snapshot) {
// // final  docs=snapshot.data.documents;
// if(!snapshot.hasData)
// return CircularProgressIndicator();
// return GridView.builder(
// gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 300,
// childAspectRatio: 3 / 2,
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// ),
// itemCount: snapshot.data.documents.length,
// itemBuilder: (BuildContext ctx, int index) {
// nm=snapshot.data.documents[index]['cName'];
// return Padding(
// padding: EdgeInsets.all(10),
// child: InkWell(
// onTap: ()=> detail(context),
// child: Card(
// child: Center(
// child: Column(
// children: <Widget>[
// Text(
// nm,
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 20, fontWeight: FontWeight.bold),
// ),
// ],
// ),
// ),
// ),
// ),
// );
// });
// },
// ),

//GridView(
//padding: EdgeInsets.all(20.0),
//children:[
//Card(
//elevation: 6.0,
//color: Theme.of(context).primaryColor,
//child: Container(
//height: 300,
//padding: EdgeInsets.all(10),
//child: Text(docs[index]['Username']),
//),
//),
//],
//gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//maxCrossAxisExtent: 500,
//childAspectRatio: 3/2,
//crossAxisSpacing: 10,
//mainAxisSpacing: 10,
//),
//);

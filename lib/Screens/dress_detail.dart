import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class dress_detail extends StatelessWidget {

  final DocumentSnapshot details;
  dress_detail({this.details});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(details.data["cName"]),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          padding: EdgeInsets.all(15),
          child: SizedBox(
            height: 760,
            width: double.infinity,

            child: Card(
              elevation: 8,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(width: 6,color: Colors.white)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Bust:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["bust"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Waist:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["waist"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Hips:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["hips"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Neck:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["neck"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Shoulder:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["shoulder"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Bust Spread:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["bs"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Back Width:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["bw"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Front Length:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["fl"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Back Length:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["bl"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Crotch:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["crotch"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Inseam:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["inseam"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Outseam:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["outseam"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Thigh:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["thigh"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Knee:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["knee"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Leg:",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          details.data["leg"],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

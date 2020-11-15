import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class show extends StatelessWidget {
  final DocumentSnapshot details;
  show({this.details});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(details.data["cName"]),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        padding: EdgeInsets.all(15),
        child: SizedBox(
          height: 680,
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
                      Text("Blouse Back Length:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["bbl"],
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
                      Text("Full Shoulder:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["fs"],
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
                      Text("Shoulder Strap:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["ss"],
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
                      Text("Back Neck Depth:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["bnd"],
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
                      Text("Front Neck Depth:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["fnd"],
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
                      Text("Shoulder to Apex:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sta"],
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
                      Text("Chest(around):",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["ca"],
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
                      Text("Waist(round):",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["wa"],
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
                      Text("Sleeve Length:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sl"],
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
                      Text("Arm Round:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["ar"],
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
                      Text("Sleeve Round:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sr"],
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
                      Text("Arm Hole:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["ah"],
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
    );
  }
}

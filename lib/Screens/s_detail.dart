import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class s_detail extends StatelessWidget {

  final DocumentSnapshot details;

  s_detail({this.details});
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
          height: 520,
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
                      Text("Collar:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["col"],
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
                      Text("Shirt Length:",
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
                      Text("Shoulder Width:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["shw"],
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
                      Text("Sleeve Length(Normal):",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sln"],
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
                      Text("Sleeve Length(Long):",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sll"],
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
                      Text("Chest:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["chest"],
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
                      Text("waist:",
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
                      Text("Sleeve width(Armpit):",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["sw"],
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
                      Text("Cuff:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["cuff"],
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
                      Text("Hip Width:",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        details.data["hw"],
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

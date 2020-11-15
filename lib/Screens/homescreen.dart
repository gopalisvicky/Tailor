import 'dart:ui';

import 'package:fltr/Screens/Show.dart';
import 'package:fltr/Screens/dress_detail.dart';
import 'package:fltr/Screens/dress_update.dart';
import 'package:fltr/Screens/mear.dart';
import 'package:fltr/Screens/s_detail.dart';
import 'package:fltr/Screens/s_update.dart';
import 'package:flutter/material.dart';
import 'package:fltr/Screens/update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class listdata extends StatefulWidget {
  @override
  _listdataState createState() => _listdataState();
}

class _listdataState extends State<listdata> {
  void add_data(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return dressMeasure();
      }),
    );
  }

  String search = "";

  Future getdata() async {
    if (search == "" || search == null) {
      QuerySnapshot qn =
          await Firestore.instance.collection("custData").getDocuments();
      return qn.documents;
    } else {
      QuerySnapshot qn = await Firestore.instance
          .collection("custData")
          .where(FieldPath.documentId, isEqualTo: search)
          .getDocuments();
      return qn.documents;
    }
  }

  final TextEditingController abc = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("HOME"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: abc,
                onChanged: (val) {
                  setState(() {
                    search = val;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 1, color: Colors.green)),
                  hintText: "Search Customer:",
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 28.0,
                    ),
                    onPressed: () => abc.clear(),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                child: FutureBuilder(
                  future: getdata(),
                  builder: (_, snapshot) {
                    if (!snapshot.hasData)
                      return Center(
                          child: CircularProgressIndicator(
                              backgroundColor: Colors.green));
                    else if (snapshot.hasData && snapshot.data.isEmpty)
                      return Column(
                        children: [
                          Image(
                            image: AssetImage('Asset/images/waiting.png'),
                            width: 300.0,
                            height: 300.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Oops! No data",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                          ),
                        ],
                      );
                    else {
                      return GridView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              if (snapshot.data[index].data['model'] ==
                                  "Blouse") {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return show(
                                    details: snapshot.data[index],
                                  );
                                }));
                              } else if (snapshot.data[index].data['model'] ==
                                  "Shirt") {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return s_detail(
                                    details: snapshot.data[index],
                                  );
                                }));
                              } else {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return dress_detail(
                                    details: snapshot.data[index],
                                  );
                                }));
                              }
                            },
                            child: GridTile(
                              child: Card(
                                color: Colors.white,
                                elevation: 3.0,
                                shadowColor: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        snapshot.data[index].data['cName'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.green,
                                          fontFamily: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .fontFamily,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            if (snapshot.data[index]
                                                    .data['model'] ==
                                                "Blouse") {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return update(
                                                  snapshot.data[index],
                                                );
                                              }));
                                            } else if (snapshot.data[index]
                                                    .data['model'] ==
                                                "Shirt") {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return s_update(
                                                  snapshot.data[index],
                                                );
                                              }));
                                            } else if (snapshot.data[index]
                                                    .data['model'] ==
                                                "Dress") {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return dress_update(
                                                  snapshot.data[index],
                                                );
                                              }));
                                            }
                                          },
                                          icon: Icon(
                                            Icons.edit,
                                            color: Colors.redAccent,
                                            size: 30.0,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                  title: new Text(
                                                    "Are you sure to want to Delete?",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                  actions: <Widget>[
                                                    new FlatButton(
                                                      child: new Text("Cancel"),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      textColor: Colors.black,
                                                    ),
                                                    new FlatButton(
                                                      child: Text("Delete"),
                                                      onPressed: () {
                                                        setState(() {
                                                          Firestore.instance
                                                              .collection(
                                                                  "custData")
                                                              .document(
                                                                snapshot
                                                                    .data[index]
                                                                    .data['cName'],
                                                              )
                                                              .delete()
                                                              .then(
                                                                (value) =>
                                                                    Fluttertoast
                                                                        .showToast(
                                                                  msg: snapshot
                                                                          .data[
                                                                              index]
                                                                          .data['cName'] +
                                                                      " is Deleted",
                                                                  backgroundColor:
                                                                      Colors
                                                                          .redAccent,
                                                                ),
                                                              );
                                                        });
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      textColor: Colors.black,
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.redAccent,
                                            size: 30.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
            onPressed: () {
              add_data(context);
            }));
  }
}

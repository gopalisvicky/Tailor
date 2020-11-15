import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homescreen.dart';

class shirt extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();
  String col,sl,shw,sln,sll,chest,waist,sw,cuff,hw;
  final String custName;
  final String mtype;
  shirt(this.custName,this.mtype);

  void create(
      String custName,
      String mtype,
      String col,
      String sl,
      String shw,
      String sln,
      String sll,
      String chest,
      String waist,
      String sw,
      String cuff,
      String hw
      ) {
    Firestore.instance.collection("custData").document(custName).setData({
      'cName': custName,
      'model': mtype,
      'col':col,
      'sl':sl,
      'shw':shw,
      'sln':sln,
      'sll':sll,
      'chest':chest,
      'waist':waist,
      'sw':sw,
      'cuff':cuff,
      'hw':hw,
    }).then((_) {
      Fluttertoast.showToast(
          msg: custName + " Added Successfully!!",
          backgroundColor: Colors.green,
          gravity: ToastGravity.CENTER);
    });
  }

  bool submit() {
    final _isvalid = _formkey.currentState.validate();
    if (_isvalid) {
      _formkey.currentState.save();
      // goHome(BuildContext);
      return true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  new WillPopScope(
      onWillPop: () async {
        return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
              title: new Text("Are you sure you want to Go to Home?",
                style: TextStyle(
                    color: Colors.green
                ),),
              actions: <Widget>[
                new FlatButton(
                  child: new Text(
                    "Yes",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return listdata();
                    }));
                  },
                ),
                new FlatButton(
                  child: Text(
                    "no",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(custName),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                elevation: 5,
                shadowColor: Colors.greenAccent,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 1),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Collar",
                          counterText: "",
                          border: Theme.of(context).inputDecorationTheme.border,
                          focusedBorder: Theme.of(context)
                              .inputDecorationTheme
                              .focusedBorder,
                        ),
                        onSaved: (val) {
                          col = val;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 1),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Shirt Length",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sl = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Shoulder Width",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          shw = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Sleeve Length(Normal)",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sln = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Sleeve Length(Long)",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sll = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Chest",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          chest = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "waist",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          waist = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Sleeve width(Armpit)",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sw = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Cuff",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          cuff = val;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        validator: (val) {
                          if (val.isEmpty)
                            return "Invalid";
                          else
                            return null;
                        },
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Hip Width",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          hw = val;
                        },
                      ),
                    ),
                    RaisedButton(
                      child: Text("Add Detail"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        if (submit()) {
                          create( custName,mtype,col, sl, shw, sln, sll, chest, waist, sw, cuff, hw);
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return listdata();
                            }),
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: "Plz fill all fields!!!",
                              textColor: Colors.redAccent,
                              gravity: ToastGravity.CENTER);
                        }
                      },
                      color: Colors.redAccent,
                      splashColor: Colors.white,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

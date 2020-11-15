import 'package:fltr/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homescreen.dart';

class measure extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  String bbl, fs, ss, bnd, fnd, sta, fl, ca, wa, sl, ar, sr, ah;
  final String custName;
  final String mtype;
  measure(this.custName, this.mtype);

  void create(
      String custName,
      String mtype,
      String bbl,
      String fs,
      String ss,
      String bnd,
      String fnd,
      String sta,
      String fl,
      String ca,
      String wa,
      String sl,
      String ar,
      String sr,
      String ah) {
    Firestore.instance.collection("custData").document(custName).setData({
      'cName': custName,
      'model': mtype,
      'bbl': bbl,
      'fs': fs,
      'ss': ss,
      'bnd': bnd,
      'fnd': fnd,
      'sta': sta,
      'fl': fl,
      'ca': ca,
      'wa': wa,
      'sl': sl,
      'ar': ar,
      'sr': sr,
      'ah': ah,
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
    return new WillPopScope(
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
          backgroundColor: Colors.green,
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
                shadowColor: Theme.of(context).primaryColor,
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
                          labelText: "Blouse Back Length",
                          focusColor: Colors.green,
                          counterText: "",
                          border: Theme.of(context).inputDecorationTheme.border,
                          focusedBorder: Theme.of(context)
                              .inputDecorationTheme
                              .focusedBorder,
                        ),
                        onSaved: (val) {
                          bbl = val;
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
                            labelText: "Full Shoulder",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          fs = val;
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
                            labelText: "Shoulder Strap",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          ss = val;
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
                            labelText: "Back Neck Depth",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          bnd = val;
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
                            labelText: "Front Neck Depth",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          fnd = val;
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
                            labelText: "Shoulder to Apex",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sta = val;
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
                            labelText: "Front length",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          fl = val;
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
                            labelText: "Chest(around)",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          ca = val;
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
                            labelText: "Waist(around)",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          wa = val;
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
                            labelText: "Sleeve Length",
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
                            labelText: "Arm Round",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          ar = val;
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
                            labelText: "Sleeve Round",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          sr = val;
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
                            labelText: "Arm Hole",
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          ah = val;
                        },
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text("Add Detail"),
                      onPressed: () {
                        if (submit()) {
                          create(custName, mtype, bbl, fs, ss, bnd, fnd, sta,
                              fl, ca, wa, sl, ar, sr, ah);
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

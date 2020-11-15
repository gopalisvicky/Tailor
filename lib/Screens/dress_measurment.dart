import 'package:fltr/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homescreen.dart';

class dress extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  String bust, waist, hips, neck, shoulder, bs, bw, fl, bl,
      crotch, inseam, outseam, thigh,knee,leg;
  final String custName;
  final String mtype;
  dress(this.custName, this.mtype);

  void create(
      String custName,
      String mtype,
      String bust,
      String waist,
      String hips,
      String neck,
      String shoulder,
      String bs,
      String bw,
      String fl,
      String bl,
      String crotch,
      String inseam,
      String outseam,
      String thigh,
      String knee,
      String leg) {
    Firestore.instance.collection("custData").document(custName).setData({
      'cName': custName,
      'model': mtype,
      'bust':bust ,
      'waist': waist,
      'hips': hips,
      'neck': neck,
      'shoulder': shoulder,
      'bs': bs,
      'bw': bw,
      'fl': fl,
      'bl': bl,
      'crotch': crotch,
      'inseam': inseam,
      'outseam': outseam,
      'thigh': thigh,
      'knee':knee,
      'leg':leg
    }).then((_) {
      Fluttertoast.showToast(
          msg: custName + " Added Successfully!!",
          backgroundColor: Colors.redAccent,
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
                          labelText: "Bust",
                          counterText: "",
                          border: Theme.of(context).inputDecorationTheme.border,
                          focusedBorder: Theme.of(context)
                              .inputDecorationTheme
                              .focusedBorder,
                        ),
                        onSaved: (val) {
                          bust = val;
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
                            labelText: "Waist",
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
                            labelText: "Hips",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          hips = val;
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
                            labelText: "Neck",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          neck = val;
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
                            labelText: "Shoulder",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          shoulder = val;
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
                            labelText: "Bust Spread",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          bs = val;
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
                            labelText: "Back Width",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          bw = val;
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
                            labelText: "Front Length",
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
                            labelText: "Back Length",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          bl = val;
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
                            labelText: "Crotch",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          crotch = val;
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
                            labelText: "Inseam",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          inseam = val;
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
                            labelText: "Outseam",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          outseam = val;
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
                            labelText: "Thigh",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          thigh = val;
                        },
                      ),
                    ),
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
                            labelText: "Knee",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          knee = val;
                        },
                      ),
                    ),
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
                            labelText: "Leg",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder),
                        onSaved: (val) {
                          leg = val;
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
                          create(custName, mtype, bust, waist, hips, neck, shoulder, bs, bw, fl, bl,
                              crotch, inseam, outseam, thigh,knee,leg);
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

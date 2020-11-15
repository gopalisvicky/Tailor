import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../main.dart';
import 'homescreen.dart';

class dress_update extends StatelessWidget {
  // final String custname;
  String bust, waist, hips, neck, shoulder, bs, bw, fl, bl,
  crotch, inseam, outseam, thigh,knee,leg;
  final DocumentSnapshot updatedetails;
  dress_update(this.updatedetails);

  final _formkey = GlobalKey<FormState>();
  bool save() {
    final _valid=_formkey.currentState.validate();
    if(_valid)
    {
      _formkey.currentState.save();
      return true;
    }
  }

  void updatedata(
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
    Firestore.instance.collection("custData").document(updatedetails.data['cName']).updateData({
      'bust': bust,
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
      'leg':leg,
    }).then((_)
    {
      Fluttertoast.showToast(msg: "Data updated Successfully ",
        backgroundColor: Colors.greenAccent,
        fontSize: 13,
        textColor: Colors.black,
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(updatedetails.data['cName']),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 6,color: Colors.white)
                ),
                elevation: 5,
                shadowColor: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['bust'],
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
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder,
                          ),
                          onSaved: (val) {
                            bust = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['waist'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            waist = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['hips'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            hips = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['neck'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            neck = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['shoulder'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            shoulder = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['bs'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            bs = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['bw'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            bw = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['fl'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            fl = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['bl'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            bl = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['crotch'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            crotch = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['inseam'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            inseam = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['outseam'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            outseam = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['thigh'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            thigh = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['knee'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            knee = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['leg'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            leg = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    RaisedButton(
                      child: Text("Add Detail"),
                      onPressed: () {
                        if(save())
                        {
                          updatedata(bust, waist, hips, neck, shoulder, bs, bw, fl, bl,
                              crotch, inseam, outseam, thigh,knee,leg);
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return listdata();
                            }),
                          );
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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

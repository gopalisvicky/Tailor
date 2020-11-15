import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../main.dart';
import 'homescreen.dart';

class update extends StatelessWidget {
  // final String custname;
  String bbl, fs, ss, bnd, fnd, sta, fl, ca, wa, sl, ar, sr, ah;
  final DocumentSnapshot updatedetails;
  update(this.updatedetails);

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
    Firestore.instance.collection("custData").document(updatedetails.data['cName']).updateData({
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
    }).then((_)
        {
          Fluttertoast.showToast(msg: "Data updated Successfully ",
            backgroundColor: Colors.greenAccent,
            fontSize: 13,
            textColor: Colors.black
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
                elevation: 4,
                shadowColor: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: updatedetails.data['bbl'],
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
                            counterText: "",
                            border:
                                Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder,
                          ),
                          onSaved: (val) {
                            bbl = val;
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
                          initialValue: updatedetails.data['fs'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            fs = val;
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
                          initialValue: updatedetails.data['ss'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            ss = val;
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
                          initialValue: updatedetails.data['bnd'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            bnd = val;
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
                          initialValue: updatedetails.data['fnd'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            fnd = val;
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
                          initialValue: updatedetails.data['sta'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Shoulder To Apex",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sta = val;
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
                          initialValue: updatedetails.data['ca'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Chest (Around)",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            ca = val;
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
                          initialValue: updatedetails.data['wa'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Waist (Around)",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            wa = val;
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
                          initialValue: updatedetails.data['sl'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sl = val;
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
                          initialValue: updatedetails.data['ar'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            ar = val;
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
                          initialValue: updatedetails.data['sr'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sr = val;
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
                          initialValue: updatedetails.data['ah'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            ah = val;
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
                            updatedata(bbl, fs, ss, bnd, fnd, sta, fl, ca, wa, sl, ar,
                                sr, ah);
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) {
                                return listdata();
                              }),
                            );
                          }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
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

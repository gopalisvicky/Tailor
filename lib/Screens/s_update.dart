import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';
import 'homescreen.dart';

class s_update extends StatelessWidget {

  final DocumentSnapshot shup;
  s_update(this.shup);

  String col,sl,shw,sln,sll,chest,waist,sw,cuff,hw;
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
      String col,
      String sl,
      String shw,
      String sln,
      String sll,
      String chest,
      String waist,
      String sw,
      String cuff,
      String hw) {
    Firestore.instance.collection("custData").document(shup.data['cName']).updateData({
      'col': col,
      'sl': sl,
      'shw': shw,
      'sln': sln,
      'sll': sll,
      'chest': chest,
      'waist': waist,
      'sw': sw,
      'cuff': cuff,
      'hw':hw,
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
        title: Text(shup.data['cName']),
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
                          initialValue: shup.data['col'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Collar:",
                            counterText: "",
                            border:
                            Theme.of(context).inputDecorationTheme.border,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder,
                          ),
                          onSaved: (val) {
                            col = val;
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
                          initialValue: shup.data['sl'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Shirt Length:",
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
                          initialValue: shup.data['shw'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Shoulder Width:",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            shw = val;
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
                          initialValue: shup.data['sln'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Sleeve Length(Normal):",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sln = val;
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
                          initialValue: shup.data['sll'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Sleeve Length(Long):",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sll = val;
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
                          initialValue: shup.data['chest'],
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
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            chest = val;
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
                          initialValue: shup.data['waist'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Waist:",
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
                          initialValue: shup.data['sw'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Sleeve width(Armpit):",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            sw = val;
                          },
                        ),
                        width: 250,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 1),
                      child: Container(
                        child: TextFormField(
                          initialValue: shup.data['sw'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Cuff:",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            cuff = val;
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
                          initialValue: shup.data['hw'],
                          validator: (val) {
                            if (val.isEmpty)
                              return "Invalid";
                            else
                              return null;
                          },
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Hip Width:",
                              counterText: "",
                              border: Theme.of(context)
                                  .inputDecorationTheme
                                  .border,
                              focusedBorder: Theme.of(context)
                                  .inputDecorationTheme
                                  .focusedBorder),
                          onSaved: (val) {
                            hw = val;
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
                          updatedata(col,sl,shw,sln,sll,chest,waist,sw,cuff,hw);
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return listdata();
                            }),
                          );
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

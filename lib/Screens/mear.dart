
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fltr/Screens/dress_measurment.dart';
import 'package:fltr/Screens/measurement.dart';
import 'package:fltr/Screens/shirt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';



class dressMeasure extends StatefulWidget {
  @override
  _dressMeasureState createState() => _dressMeasureState();
}

class _dressMeasureState extends State<dressMeasure> {

  @override


  final _formkey = GlobalKey<FormState>();
  final textform=TextEditingController();
  String name;
  String modeltype;
  String _radioselect="Blouse";


  cleartext()
  {
    textform.clear();
  }
  void next(BuildContext)
  {
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
            return measure(name,_radioselect);
      }),);
  }
  void next2(BuildContext)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
          return dress(name,_radioselect);
    }),);
  }
  void next3(BuildContext)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return shirt(name,_radioselect);
    }));
  }
  bool _submit() {
    final isvalid = _formkey.currentState.validate();
    if (isvalid) {
      _formkey.currentState.save();
        return true;
    }
  }
  void add() async
  {

    final alive= await Firestore.instance.collection("custData").document(name).get();
    if (alive.exists)
    {
      Fluttertoast.showToast(msg: "Customer Already Exist!!!",
      backgroundColor: Colors.greenAccent,textColor: Colors.black,fontSize: 13);
      cleartext();
    }
    else {
      if (_radioselect == "Blouse")
        next(BuildContext);
      else if(_radioselect == "Dress")
        next2(BuildContext);
      else
        next3(BuildContext);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Create New Customer"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 330,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          shadowColor: Colors.green,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: textform,
                      validator: (val) {
                        if (val.isEmpty)
                          return "Can't be Empty";
                        else
                          return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Enter Customer name:",
                        suffixIcon: IconButton(
                          onPressed:() =>textform.clear(),
                          icon: Icon(Icons.clear,
                          color: Colors.redAccent,
                          ),
                        ),
                        counterText: "",
                        border: Theme.of(context).inputDecorationTheme.border,
                        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
                      ),
                      onSaved: (val) {
                        name = val;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  RadioListTile(
                        activeColor: Colors.redAccent,
                        title: Text("Blouse"),
                        value: "Blouse",
                        groupValue:_radioselect,
                        onChanged: (val)
                        {
                            setState(() {
                              _radioselect=val;
                            });
                        },
                      ),
                  RadioListTile(
                    activeColor: Colors.redAccent,
                    title: const Text("Dress"),
                    value: "Dress",
                    groupValue: _radioselect,
                    onChanged: (val)
                    {
                      setState(() {
                        _radioselect=val;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.redAccent,
                    title: const Text("Shirt"),
                    value: "Shirt",
                    groupValue: _radioselect,
                    onChanged: (val)
                    {
                      setState(() {
                        _radioselect=val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    width: 100,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23.0),
                      ),
                      child: Text("Next",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                      onPressed: () {
                        if(_submit() && _radioselect=="Blouse")
                        {
                          add();
                        }
                        else {
                            _submit();
                            add();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//                TextFormField(
//                  validator: (val) {
//                    if (val.isEmpty)
//                      return "Plz enter number";
//                    else
//                      return null;
//                  },
//                  onSaved: (val) {
//                    age = val;
//                  },
//                  decoration: InputDecoration(
//                    labelText: "Enter your age:",
//                    focusedBorder: OutlineInputBorder(
//                        borderSide:
//                            BorderSide(color: Colors.yellow, width: 3.0)),
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(3.0),
//                    ),
//                  ),
//                ),
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//
//class dressMeasure extends StatelessWidget {
//  final _formkey = GlobalKey<FormState>();
//
//  String name;
//  String age;
//  void _submit() {
//    final isvalid = _formkey.currentState.validate();
//    if (isvalid) {
//      _formkey.currentState.save();
//    }
//  }
//  void add(String name, String age) {
//    Firestore.instance.collection('Chats')
//    .add({
//      'username':name,
//      'age':age,
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("firebase add data"),
//      ),
//      body: Card(
//        child: Container(
//          padding: EdgeInsets.all(10.0),
//          child: Form(
//            key: _formkey,
//            child: Column(
//              children: <Widget>[
//                TextFormField(
//                  validator: (val) {
//                    if (val.isEmpty)
//                      return "Invalid";
//                    else
//                      return null;
//                  },
//                  decoration: InputDecoration(
//                    labelText: "Enter your name:",
//                    focusColor: Colors.yellow,
//                    focusedBorder: OutlineInputBorder(
//                        borderSide: BorderSide(
//                            color: Colors.yellow,
//                            width: 3.0
//                        )
//                    ),
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(3.0)),
//                  ),
//                  onSaved: (val) {
//                    name = val;
//                  },
//                ),
//                SizedBox(height: 10),
//                TextFormField(
//
//                  validator: (val) {
//                    if (val.isEmpty)
//                      return "Invalid";
//                    else
//                      return null;
//                  },
//                  decoration: InputDecoration(
//                    labelText: "Enter your age:",
//                    focusedBorder: OutlineInputBorder(
//                        borderSide: BorderSide(
//                            color: Colors.yellow,
//                            width: 3.0
//                        )
//                    ),
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(3.0),
//                    ),
//                  ),
//                  onSaved: (val) {
//                    age = val;
//                  },
//                ),
//                FlatButton(
//                  child: Text("Add to firebase"),
//                  color: Colors.yellow,
//                  onPressed: () {
//                    _submit();
//                    add(name, age);
//                  },
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//
//

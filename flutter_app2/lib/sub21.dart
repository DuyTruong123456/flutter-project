import 'package:flutter/material.dart';
import 'dart:async';
import 'package:translator/translator.dart';
import'sub22.dart';
void main21() async {

  runApp(MyApp21());

}

var after;
var dropdownValue="tiếng Việt";
var dropdownValue1="English";
final myController1 = TextEditingController();

void translate() async {
  var translator = GoogleTranslator();
  var input = myController1.text;
  List trans=['vi','en','ja'];
  int i,j;
  if(dropdownValue1=="tiếng Việt")i=0;
  if(dropdownValue1=="English")i=1;
  if(dropdownValue1=="日本語")i=2;
  if(dropdownValue=="tiếng Việt")j=0;
  if(dropdownValue=="English")j=1;
  if(dropdownValue=="日本語")j=2;
  // Using the Future API
  translator
      .translate(input, from: trans[j], to: trans[i])
      .then((result)  {
  //  print("Source: $input\nTranslated: $result");

  });

  // Passing the translation to a variable
  after= await translator
      .translate(input, from: trans[j], to: trans[i]);
  print(after);

}

class MyApp21 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp21> {
  Timer _timer;
  int _start;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[ MaterialApp(
            home: Scaffold(
                body: SingleChildScrollView(
                    child: SafeArea(
                        child: Scrollbar(
                            child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [Table(
                                        border: TableBorder.all(
                                          color: Colors.orange,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                        children: [
                                          TableRow(
                                              children: [

                                                Container(
                                                  color: Colors.lightGreen,
                                                  height: 50,
                                                  padding: const EdgeInsets
                                                      .only(left: 0,
                                                      right: 0,
                                                      bottom: 10,
                                                      top: 20),

                                                  child: Text(
                                                    'Từ điển',

                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height: 75,


                                                  child: Row(
                                                    children: [
                                                      Spacer(
                                                        flex:1,
                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color: Colors
                                                                .white60,
                                                            height: 50,

                                                            child: TextFormField(
                                                              controller: myController1,
                                                              decoration: InputDecoration(

                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors
                                                                          .lightBlue,
                                                                      width: 2.0),
                                                                ),
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1.0,
                                                                  ),
                                                                ),


                                                              ),
                                                            ),
                                                          ),
                                                          flex: 5,
                                                          fit: FlexFit.tight
                                                      ),
                                                      Spacer(
                                                        flex: 1,
                                                      ),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),


                                          TableRow(children: [

                                            Row(
                                                children: [
                                                  Spacer(
                                                    flex:1,
                                                  ),
                                                  Flexible(
                                                    flex: 4,
                                                    fit: FlexFit.tight,
                                                    child:Container(
                                                      height:45,
                                                      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 0,top:0),
                                                      color: Colors.lightBlueAccent,
                                                    child: DecoratedBox(
                                                      decoration: ShapeDecoration(
                                                        shape: RoundedRectangleBorder(
                                                          side: BorderSide(width: 1.0, style: BorderStyle.solid),
                                                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                        ),
                                                      ),
                                                        child:DropdownButton<
                                                        String>(

                                                      value: dropdownValue,
                                                      icon: const Icon(Icons
                                                          .arrow_drop_down),


                                                      style: const TextStyle(
                                                          color: Colors.black),
                                                      focusColor: Colors.lightBlueAccent,
                                                      dropdownColor: Colors
                                                          .lightBlueAccent,
                                                      onChanged: (
                                                          String newValue) {
                                                        setState(() {
                                                          dropdownValue =
                                                              newValue;
                                                        });
                                                      },
                                                      items: <String>[
                                                        'tiếng Việt',
                                                        'English',
                                                        '日本語'
                                                      ]
                                                          .map<DropdownMenuItem<
                                                          String>>((
                                                          String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),

                                                    ),
                                                  ),
                                                  ),
                                                  Spacer(
                                                    flex:1,
                                                  ),
                                                  Flexible(
                                                    flex: 4,
                                                    fit: FlexFit.tight,
                                                    child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          backgroundColor: MaterialStateProperty
                                                              .all<Color>(
                                                              Colors.orangeAccent),
                                                          foregroundColor: MaterialStateProperty
                                                              .all<Color>(
                                                              Colors.black)
                                                      ),
                                                      child: Text('switch'),

                                                      onPressed: () {
                                                        setState(() {
                                                          var store = dropdownValue;
                                                          dropdownValue =
                                                              dropdownValue1;
                                                          dropdownValue1 =
                                                              store;
                                                        });
                                                      },
                                                    ),


                                                  ),
                                                  Spacer(
                                                    flex:1,
                                                  ),
                                                  Flexible(
                                                    flex: 4,
                                                    fit: FlexFit.tight,
                                                    child:Container(
                                                    height:45,
                                                    padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 0,top:0),
                                                    color: Colors.lightBlueAccent,
                                                    child: DecoratedBox(
                                                      decoration: ShapeDecoration(
                                                        shape: RoundedRectangleBorder(
                                                          side: BorderSide(width: 1.0, style: BorderStyle.solid),
                                                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                        ),
                                                      ),
                                                    child: DropdownButton<
                                                        String>(

                                                      value: dropdownValue1,
                                                      icon: const Icon(Icons
                                                          .arrow_drop_down),

                                                      isExpanded: true,
                                                      style: const TextStyle(
                                                          color: Colors.black),
                                                      focusColor: Colors.lightBlueAccent,
                                                      dropdownColor: Colors
                                                          .lightBlueAccent,
                                                      onChanged: (
                                                          String newValue) {
                                                        setState(() {
                                                          dropdownValue1 =
                                                              newValue;
                                                        });
                                                      },
                                                      items: <String>[
                                                        'tiếng Việt',
                                                        'English',
                                                        '日本語'
                                                      ]
                                                          .map<DropdownMenuItem<
                                                          String>>((
                                                          String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),

                                                    ),
                                                  ),
                                                  ),
                                                  Spacer(
                                                    flex:1,
                                                  ),
                                                ]

                                            ),


                                          ]

                                          ),

                                          TableRow(children: [
                                            Container(

                                              child: Row(
                                                  children: [

                                                    Flexible(
                                                      flex: 4,
                                                      fit: FlexFit.tight,
                                                      child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor: MaterialStateProperty
                                                                .all<Color>(
                                                                Colors.white),
                                                            foregroundColor: MaterialStateProperty
                                                                .all<Color>(
                                                                Colors.black)
                                                        ),
                                                        child: Text(
                                                            'translate'),

                                                        onPressed: () {
                                                          setState(() {
                                                            // print(after);

                                                            translate();
                                                          //  print(myController1.text);

                                                             _start = 1;

                                                              const oneSec = const Duration(seconds: 1);
                                                              _timer = new Timer.periodic(
                                                                oneSec,
                                                                    (Timer timer) {
                                                                  if (_start == 0) {
                                                                    setState(() {

                                                                      timer.cancel();
                                                                      translate();
                                                                    });
                                                                  } else {
                                                                    setState(() {
                                                                      print(_start);
                                                                      _start--;
                                                                    });
                                                                  }
                                                                },
                                                              );
                                                              
                                                            }

                                                          );
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            )
                                          ]

                                          ),
                                          TableRow(
                                              children: [

                                                Container(
                                                  color: Colors.lightGreen,
                                                  height: 50,
                                                  padding: const EdgeInsets
                                                      .only(left: 0,
                                                      right: 0,
                                                      bottom: 10,
                                                      top: 20),

                                                  child: Text(
                                                   after.toString() ?? ' ',

                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),


                                                )
                                              ]
                                          ),
                                        ]
                                    )
                                    ]
                                )
                            )
                        )
                    )
                )
            )
        )
        ]

    );
  }

}
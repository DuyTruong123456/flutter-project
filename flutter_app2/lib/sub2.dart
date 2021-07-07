import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main2() {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  double value3;
  var value4='';
  var value5='';
  @override
  Widget build(BuildContext context) {
    return Stack(
        children:<Widget>[ MaterialApp(
            home: Scaffold(appBar: AppBar(title:Text('New App')),
                body: SingleChildScrollView(
                    child: SafeArea(
                        child:Scrollbar(
                            child:Center(
                                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                                    children:[Table(
                                        border:TableBorder.all(
                                          color:Colors.grey,
                                          width: 4,
                                          style:BorderStyle.solid,
                                        ),
                                        children:[
                                          TableRow(
                                              children: [

                                                Container(
                                                  color:Colors.lightGreen,
                                                  height: 50,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),

                                                  child :Text('  Các kiểu lập trình sự kiện',

                                                    style: TextStyle(color:Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height:75,


                                                  child:Row(
                                                    children: [
                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white,
                                                            height:50,
                                                            padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                            child:Text('  Nhập C:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:3,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:TextFormField(
                                                              controller: myController1,
                                                              decoration: InputDecoration(

                                                                  focusedBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                  ),
                                                                  enabledBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.black,
                                                                      width: 1.0,
                                                                    ),
                                                                  ),
                                                                  hintText: (value4??'')

                                                              ),
                                                            ),
                                                          ),
                                                          flex:5,
                                                          fit:FlexFit.tight
                                                      ),
                                                      Spacer(
                                                        flex:1,
                                                      ),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),

                                          TableRow(
                                              children: [
                                                Container(
                                                  height:75,


                                                  child:Row(
                                                    children: [
                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white,
                                                            height:50,
                                                            padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                            child:Text('  Nhập F:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:3,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:TextFormField(
                                                              controller: myController2,
                                                              decoration: InputDecoration(

                                                                  focusedBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                  ),
                                                                  enabledBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.black,
                                                                      width: 1.0,
                                                                    ),
                                                                  ),
                                                                  hintText: (value5??'')
                                                              ),

                                                            ),
                                                          ),
                                                          flex:5,
                                                          fit:FlexFit.tight
                                                      ),
                                                      Spacer(
                                                        flex:1,
                                                      ),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),

                                          TableRow(children:[
                                            Container(

                                              color:Colors.grey,
                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                      flex:4,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Convert F to C'),
                                                        onPressed: (){
                                                          setState(() {
                                                            var value2 = double.parse(myController2.text);


                                                            value3=(value2-32)*5/9;
                                                            value4=value3.toString();
                                                            myController2.clear();
                                                            value5='';
                                                          });
                                                        },
                                                      ),


                                                    ),
                                                    Spacer(
                                                        flex:3
                                                    ),
                                                    Flexible(
                                                      flex:4,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Convert C to F'),
                                                        onPressed: (){
                                                          setState(() {

                                                            var value1 = double.parse(myController1.text);

                                                            value3=value1*(9/5)+32;
                                                            value5=value3.toString();
                                                            myController1.clear();
                                                            value4='';
                                                          });
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            ),

                                          ]

                                          ),
                                          TableRow(children:[
                                            Container(

                                              color:Colors.grey,
                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                      flex:4,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('erase all'),

                                                        onPressed: () {
                                                          setState(() {
                                                            value4='';
                                                            value5='';
                                                          });
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            )
                                          ]

                                          ),


                                          TableRow(children:[
                                            Container(

                                              color:Colors.grey,
                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                      flex:4,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('back'),

                                                        onPressed: () {Navigator.pop(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context)=>MySubApp(),
                                                          ),
                                                        );
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            )
                                          ]

                                          ),
                                        ]
                                    )]
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
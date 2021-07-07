import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main1() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  double value3;
  var value4='0';
  @override
  Widget build(BuildContext context) {
    return Stack(
     children:<Widget>[ MaterialApp(
        home: Scaffold(appBar: AppBar(title:Text('New App')),
            body:Center(
    child: SafeArea(
    child:Scrollbar(
    child:SingleChildScrollView(
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
                                            child:Text('  Nhập a:',style: TextStyle(color:Colors.black),),
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
                                            child:Text('  Nhập b:',style: TextStyle(color:Colors.black),),
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
                                    color:Colors.lightGreen,
                                    child:Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[Text(value4??'0'),]
                                    )
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
                                        child:Text('Plus'),
                                        onPressed: (){
                                          setState(() {
                                            var value1 = double.parse(myController1.text);
                                            print(value1);
                                            var value2 = double.parse(myController2.text);
                                            print(value2);
                                            value3=value1+value2;
                                            value4=value3.toString();
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
                                        child:Text('Minus'),
                                        onPressed: (){
                                          setState(() {
                                            var value1 = double.parse(myController1.text);
                                            print(value1);
                                            var value2 = double.parse(myController2.text);
                                            print(value2);
                                            value3=value1-value2;
                                            value4=value3.toString();
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
                                        child:Text('Multiply'),
                                        onPressed: (){
                                          setState(() {
                                            var value1 = double.parse(myController1.text);
                                            print(value1);
                                            var value2 = double.parse(myController2.text);
                                            print(value2);
                                            value3=value1*value2;
                                            value4=value3.toString();
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
                                        child:Text('Divide'),
                                        onPressed: (){
                                          setState(() {
                                            var value1 = double.parse(myController1.text);
                                            print(value1);
                                            var value2 = double.parse(myController2.text);
                                            print(value2);
                                            value3=value1/value2;
                                            value4=value3.toString();
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
                                        child:Text('relative prime'),
                                        onPressed: (){
                                          setState(() {
                                            var value1 = double.parse(myController1.text);
                                            print(value1);
                                            var value2 = double.parse(myController2.text);
                                            print(value2);
                                            if(value1>value2)
                                            { for(double i=1;i<value2;i++)
                                            {
                                              if(value1%i==0&&value2%i==0)
                                              {
                                                value3=i;
                                              }
                                            }
                                            }
                                            if(value2>value1)
                                            { for(double i=1;i<value1;i++)
                                            {
                                              if(value1%i==0&&value2%i==0)
                                              {
                                                value3=i;
                                              }
                                            }
                                            }
                                            value4=value3.toString();
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
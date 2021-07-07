import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main3() {
  runApp(MyApp3());
}

class MyApp3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp3> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  var value1='';
  var value2='';
  double value3;
  double value4;
  var valuestr='';
double calculate=0;
  int check=0;
  int cal=0;
  int flag=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
           children:<Widget>[ MaterialApp(
               home: Scaffold(appBar: AppBar(
               ),
                   backgroundColor: Colors.black,
                body:
                SingleChildScrollView(
    child: SafeArea(
    child:Scrollbar(
    child:Center(
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                        children:[Table(
                            border:TableBorder.all(

                              width: 4,
                              style:BorderStyle.solid,
                            ),
                            children:[

                              TableRow(
                                  children: [
                                    Container(
                                      height:100,


                                      child:Row(
                                        children: [


                                          Flexible(
                                              child: Container(

                                                height:50,

                                                child:TextFormField(
                                                  textAlign: TextAlign.right,
                                                  style:TextStyle(color:Colors.white),
                                                  controller: myController1,
                                                    showCursor: true,
                                                    readOnly: true,
                                                  decoration: InputDecoration(

                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                      ),
                                                      enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white,width: 3.0,

                                                        ),
                                                      ),
                                                      hintText: (valuestr??''),
                                                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),

                                                  ),
                                                ),
                                              ),
                                              flex:99,
                                              fit:FlexFit.tight
                                          ),
Spacer(flex:1)
                                        ],
                                      ),


                                    )
                                  ]
                              ),
                              TableRow(children:[
                                Container(


                                  child:Row(
                                      children: [
                                        Flexible(
                                          flex:17,
                                          fit:FlexFit.tight,
                                          child :ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                            ),


                                            onPressed: () {
                                              setState(() {

                                              });
                                            },
                                          ),


                                        ),
                                        Spacer(flex:1),
                                        Flexible(
                                          flex:5,
                                          fit:FlexFit.tight,
                                          child :ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                            ),
                                            child:Text('delete'),

                                            onPressed: () {
                                              setState(() {
                                              valuestr='';
                                              value1='';
                                              value2='';
                                              value3=0;
                                              value4=0;
                                              cal=0;
                                              check=0;
                                              calculate=0;
                                              flag=0;
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


                                  child:Row(
                                      children: [

                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                          width:100,
                                          child :ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                            ),
                                            child:Text('7',
                                            style:TextStyle(fontSize:20)
                                            ),
                                            onPressed: (){
                                              setState(() {
                                                if(flag==1)
                                                {
                                                  valuestr='';
                                                  value1='';
                                                  value2='';
                                                  value3=0;
                                                  value4=0;
                                                  cal=0;
                                                  check=0;
                                                  calculate=0;
                                                  flag=0;
                                                }
                                              valuestr+='7';
                                              if(check==0)
                                               {
                                                 value1+='7';
                                               }
                                              if(check==1)
                                              {
                                                value2+='7';
                                              }

                                              });
                                            },
                                          ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('8',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='8';
                                                  if(check==0)
                                                  {
                                                    value1+='8';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='8';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('9',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='9';
                                                  if(check==0)
                                                  {
                                                    value1+='9';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='9';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white10),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('%',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='%';
                                                  check+=1;
                                                  cal=1;
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                      ]

                                  ),
                                ),

                              ]

                              ),
                              TableRow(children:[
                                Container(


                                  child:Row(
                                      children: [

                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('4',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='4';
                                                  if(check==0)
                                                  {
                                                    value1+='4';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='4';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('5',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='5';
                                                  if(check==0)
                                                  {
                                                    value1+='5';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='5';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('6',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='6';
                                                  if(check==0)
                                                  {
                                                    value1+='6';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='6';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white10),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('x',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='x';
                                                  check+=1;
                                                  cal=2;
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                      ]

                                  ),
                                ),

                              ]

                              ),
                              TableRow(children:[
                                Container(


                                  child:Row(
                                      children: [

                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('1',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='1';
                                                  if(check==0)
                                                  {
                                                    value1+='1';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='1';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('2',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='2';
                                                  if(check==0)
                                                  {
                                                    value1+='2';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='2';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('3',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='3';
                                                  if(check==0)
                                                  {
                                                    value1+='3';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='3';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white10),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('-',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='-';
                                                  check+=1;
                                                  cal=3;
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                      ]

                                  ),
                                ),

                              ]

                              ),
                              TableRow(children:[
                                Container(


                                  child:Row(
                                      children: [

                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('.',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='.';
                                                  if(check==0)
                                                  {
                                                    value1+='.';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='.';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white24),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('0',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='0';
                                                  if(check==0)
                                                  {
                                                    value1+='0';
                                                  }
                                                  if(check==1)
                                                  {
                                                    value2+='0';
                                                  }
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white10),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('=',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if (flag == 0) {
                                                    value3 =
                                                        double.parse(value1);
                                                    value4 =
                                                        double.parse(value2);
                                                    if (cal == 1) {
                                                      calculate =
                                                          value3 / value4;
                                                    }
                                                    if (cal == 2) {
                                                      calculate =
                                                          value3 * value4;
                                                    }
                                                    if (cal == 3) {
                                                      calculate =
                                                          value3 - value4;
                                                    }
                                                    if (cal == 4) {
                                                      calculate =
                                                          value3 + value4;
                                                    }
                                                    valuestr =
                                                        calculate.toString();
                                                  }
                                                  flag=1;
                                                }

                                                  );
                                              },
                                            ),
                                          ),

                                        ),
                                        Spacer(
                                            flex:1
                                        ),
                                        Flexible(
                                          flex:32,
                                          fit:FlexFit.loose,
                                          child:SizedBox(

                                            height:100,
                                            width:100,
                                            child :ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white10),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                              ),
                                              child:Text('+',
                                                  style:TextStyle(fontSize:20)
                                              ),
                                              onPressed: (){
                                                setState(() {
                                                  if(flag==1)
                                                  {
                                                    valuestr='';
                                                    value1='';
                                                    value2='';
                                                    value3=0;
                                                    value4=0;
                                                    cal=0;
                                                    check=0;
                                                    calculate=0;
                                                    flag=0;
                                                  }
                                                  valuestr+='+';
                                                  check+=1;
                                                  cal=4;
                                                });
                                              },
                                            ),
                                          ),

                                        ),
                                      ]

                                  ),
                                ),

                              ]

                              ),
                              TableRow(children:[
                                Container(

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
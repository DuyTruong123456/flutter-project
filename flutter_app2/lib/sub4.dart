import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main4() {
  runApp(MyApp4());
}

class MyApp4 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp4> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  var value4,value5;
  int value2,value3;

  var valueshow='';
  var can = ['Canh','Tân','Nhâm','Qúy','Gíap', 'ẤT', 'Bính','Đinh','Mậu','Kỷ'];
  var chi= ['Thân','Dậu','Tuất','Hợi','Tí', 'Sửu', 'Dần','Mẹo','Thìn','Tị','Ngọ','Mùi'];
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

                                                  child :Text('  Chuyển đổi năm',

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
                                                            child:Text('  Nhập Năm Dương Lịch:',style: TextStyle(color:Colors.black),),
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

                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),

                                          TableRow(children:[
                                            Container(

                                              color:Colors.white,
                                              child:Row(
                                                  children: [

                                                    Spacer(flex:3),
                                                    Flexible(
                                                      flex:5,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.grey),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('chuyển đổi'),
                                                        onPressed: (){
                                                          setState(() {
                                                            valueshow='';
                                                            value4='';
                                                            value5='';
                                                            var value1 = int.parse(myController1.text);
                                                            if(value1>=1900) {
                                                              value2 =
                                                                  value1 % 10;
                                                              value3 =
                                                                  value1 % 12;
                                                              print(value2);
                                                              print(value3);
                                                              value4 =
                                                              can[value2];
                                                              value5 =
                                                              chi[value3];
                                                              valueshow +=
                                                                  value4;
                                                              valueshow += ' ';
                                                              valueshow +=
                                                                  value5;
                                                              myController1
                                                                  .clear();
                                                            }
                                                          });
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            ),

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
                                                            child:Text('  Năm Âm lịch:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:3,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                              padding: const EdgeInsets.only(left: 100, right: 0 , bottom: 30,top:30),
                                                            color:Colors.yellowAccent,


                                                            child:Text(valueshow??'')
                                                          ),
                                                          flex:5,
                                                          fit:FlexFit.tight
                                                      ),

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
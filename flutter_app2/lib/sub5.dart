import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main5() {
  runApp(MyApp5());
}

class MyApp5 extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
enum radio {check1,check2,check3 }
class _MyAppState extends State<MyApp5> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  double value3;

  var value4='';
  var value5='';
  bool values1=false;
  bool values2=false;
  bool values3=false;
  var valuecheckbox1='';
  var valuecheckbox2='';
  var valuecheckbox3='';
  radio valueradio = radio.check3;
  var valuecheck='Đại Học';
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
                                                            child:Text('  Họ Tên:',style: TextStyle(color:Colors.black),),
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
                                                            child:Text(' CMND:',style: TextStyle(color:Colors.black),),
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
                                                  height:30,
                                                  color:Colors.lightBlue,

                                                  child:Row(
                                                    children: [
                                                      Spacer(flex:3),
                                                      Container(

                                                      child:Text('Sở Thích',
                                                        style: TextStyle(color: Colors.yellow),),),
                                                      Spacer(flex:3),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                             Row(
                                             children:[
                                               Flexible(
                                                 flex:10,
                                              fit:FlexFit.tight,
                                              child: Container(
                                                  height:70,
                                                  color:Colors.white,
                                                  child:  Row(
                                                  children: [Checkbox(

                                                    value: values1,
                                                    onChanged: (bool value) {
                                                    setState(() {
                                                      values1 = value;
                                                      if(values1==true)
                                                        {
                                                          valuecheckbox1='Đọc báo';
                                                        }
                                                      if(values1==false)
                                                      {
                                                        valuecheckbox1='';
                                                      }
                                                    });
                                                    },
                                                  ),
                                                    Text('Đọc báo'),
                                                  ]
                                                )
                                                )
                                               ),

    Flexible(
    flex:10,
    fit:FlexFit.tight,
    child:
                                               Container(

                                                   height:70,
                                                   color:Colors.white,
                                                   child:  Row(
                                                       children: [Checkbox(

                                                         value: values2,
                                                         onChanged: (bool value) {
                                                           setState(() {
                                                             values2 = value;
                                                             if(values2==true)
                                                             {
                                                               valuecheckbox2='Đọc sách';
                                                             }
                                                             if(values2==false)
                                                             {
                                                               valuecheckbox2='';
                                                             }
                                                           });
                                                         },
                                                       ),
                                                         Text('Đọc sách'),
                                                       ]
                                                   )
                                               )
                                               ),

                                               Flexible(
                                                   flex:12,
                                                   fit:FlexFit.tight,
                                                   child:
                                               Container(

                                                   height:70,
                                                   color:Colors.white,
                                                   child:  Row(
                                                       children: [Checkbox(

                                                         value: values3,
                                                         onChanged: (bool value) {
                                                           setState(() {
                                                             values3 = value;
                                                             if(values3==true)
                                                             {
                                                               valuecheckbox3='Đọc coding';
                                                             }
                                                             if(values3==false)
                                                             {
                                                               valuecheckbox3='';
                                                             }
                                                           });
                                                         },
                                                       ),
                                                         Text('Đọc coding'),
                                                       ]
                                                   )
                                               )
                                               ),
                                               Spacer(flex:1),
                                                  ]
                                             )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height:30,
                                                  color:Colors.lightBlue,

                                                  child:Row(
                                                    children: [
                                                      Spacer(flex:3),
                                                      Container(
                                                        child:Text('Bằng Cấp',
                                                          style: TextStyle(color: Colors.yellow),),),
                                                      Spacer(flex:3),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height:70,
                                                  color:Colors.white,
                                                  child:Row(
                                                    children: <Widget>[
                                                      Flexible(
                                                        flex:12,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                                child:Row(
                                                             children: [
                                                                 Radio<radio>(
                                                                  value: radio.check1,
                                                                  groupValue: valueradio,
                                                                  onChanged: (radio value) {
                                                                    setState(() {
                                                                      valueradio = value;
                                                                      valuecheck='Trung Cấp';
                                                                    });
                                                                  },
                                                                ),
                                                              Text('Trung Cấp')
                                                              ])
                                                              ),
                                                      ),

                                                      Flexible(
                                                        flex:10,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                            child:Row(
                                                                children: [
                                                                  Radio<radio>(
                                                                    value: radio.check2,
                                                                    groupValue: valueradio,
                                                                    onChanged: (radio value) {
                                                                      setState(() {
                                                                        valueradio = value;
                                                                        valuecheck='Cao Đẳng';
                                                                      });
                                                                    },
                                                                  ),
                                                                  Text('Cao Đẳng')
                                                                ])
                                                        ),
                                                      ),

                                                      Flexible(
                                                        flex:10,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                            child:Row(
                                                                children: [
                                                                  Radio<radio>(
                                                                    value: radio.check3,
                                                                    groupValue: valueradio,
                                                                    onChanged: (radio value) {
                                                                      setState(() {
                                                                        valueradio = value;
                                                                        valuecheck='Đại Học';
                                                                      });
                                                                    },
                                                                  ),
                                                                  Text('Đại Học')
                                                                ])
                                                        ),
                                                      ),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height:30,
                                                  color:Colors.lightBlue,

                                                  child:Row(
                                                    children: [
                                                      Spacer(flex:3),
                                                      Container(
                                                        child:Text('Thông Tin Bổ Sung',
                                                          style: TextStyle(color: Colors.yellow),
                                                        ),),
                                                      Spacer(flex:3),
                                                    ],
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(children:[
                                            Container(

                                              child:Row(
                                                  children: [
                                                    Spacer(flex:1),
                                                    Flexible(
                                                        child: Container(

                                                          height:50,

                                                          child:TextFormField(
                                                            maxLines: null,
                                                            controller: myController3,
                                                            decoration: InputDecoration(

                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 3.0),
                                                                ),
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.black,
                                                                    width: 3.0,
                                                                  ),
                                                                ),

                                                            ),

                                                          ),
                                                        ),
                                                        flex:5,
                                                        fit:FlexFit.tight
                                                    ),
                                                    Spacer(flex:1),
                                                  ]

                                              ),
                                            ),

                                          ]

                                          ),
                                          TableRow(children:[
    SingleChildScrollView(
    child: SafeArea(
    child:Scrollbar(
                                          child:Container(

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
                                                        child:Text('submit'),

                                                        onPressed: () {
                                                          var valuecheckbox;
                                                          setState(() {
                                                            if(valuecheckbox1!=''&&valuecheckbox2!=''&&valuecheckbox3!='')
                                                            {valuecheckbox=valuecheckbox1+'-'+valuecheckbox2+'-'+valuecheckbox3;}
                                                            if(valuecheckbox1==''&&valuecheckbox2!=''&&valuecheckbox3!='')
                                                            {valuecheckbox=valuecheckbox2+'-'+valuecheckbox3;}
                                                            if(valuecheckbox1!=''&&valuecheckbox2==''&&valuecheckbox3!='')
                                                            {valuecheckbox=valuecheckbox1+'-'+valuecheckbox3;}
                                                            if(valuecheckbox1!=''&&valuecheckbox2!=''&&valuecheckbox3=='')
                                                            {valuecheckbox=valuecheckbox1+'-'+valuecheckbox2;}
                                                            if(valuecheckbox1==''&&valuecheckbox2==''&&valuecheckbox3!='')
                                                            {valuecheckbox=valuecheckbox3;}
                                                            if(valuecheckbox1==''&&valuecheckbox2!=''&&valuecheckbox3=='')
                                                            {valuecheckbox=valuecheckbox2;}
                                                            if(valuecheckbox1!=''&&valuecheckbox2==''&&valuecheckbox3=='')
                                                            {valuecheckbox=valuecheckbox1;}
                                                            if(valuecheckbox1==''&&valuecheckbox2==''&&valuecheckbox3=='')
                                                            {valuecheckbox='';}
                                                          });
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              return Dialog(
                                                              child:Container(
                                                                height :300,
                                                             width:100,
                                                             child: Column(
                                                                children: [
                                                                  Row(
                                                                    children:[
                                                                      Text('Thông tin cá nhân',
                                                                 style: TextStyle(
                                                                   color:Colors.lightBlueAccent,
                                                                     fontSize:15,
                                                                     fontWeight: FontWeight.bold))
                                                                    ]
                                                                  ),
                                                                  Divider(
                                                                    color: Colors.lightBlue,
                                                                    thickness: 5,
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text(myController1.text??'chưa nhập',
                                                                      style: TextStyle(fontSize:15,
                                                                        fontWeight: FontWeight.bold,))
                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text(myController2.text??'chưa nhập',
                                                                      style: TextStyle(fontSize:15,
                                                                        fontWeight: FontWeight.bold))
                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text(valuecheck??'',
                                                                            style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold))
                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text(valuecheckbox??'',
                                                                          style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),

                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text('-------------------------------',
                                                                          style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),

                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text('Thông tin bổ sung',
                                                                          style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),

                                                                      ]
                                                                  ),
                                                                  Row(
                                                                      children:[
                                                                        Text(myController3.text??'',
                                                                          style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),

                                                                      ]
                                                                  ),

                                                                 Row(
                                                                      children:[
                                                                        Text('-------------------------------',
                                                                          style: TextStyle(fontSize:15,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),

                                                                      ]
                                                                  ),
                                                                  Row(mainAxisSize: MainAxisSize.max,
                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                      children: [
Container(width:270,
                                                                        child: ElevatedButton(
                                                                            style: ButtonStyle(
                                                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                                                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black),

                                                                            ),
                                                                            child:Text('Đóng'),

                                                                            onPressed: () {Navigator.pop(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context)=>MyApp5(),
                                                                              ),
                                                                            );
                                                                            },
                                                                          ),
)



                                                                      ]

                                                                  ),

                                                                ],

                                                              ),
                                                              )
                                                              );
                                                            },

                                                          );
                                                        },
                                                      ),


                                                    )
                                                  ]

                                              ),
                                            )
    )
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
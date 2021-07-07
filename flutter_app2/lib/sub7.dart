import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main7() {
  runApp(MyApp7());
}

class MyApp7 extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
enum radio {check1,check2,check3 }
class _MyAppState extends State<MyApp7> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  bool values1=false;
  double value;
  int count;
  var TT;
  int sum=0;
  int sumVip=0;
  int sumMoney=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children:<Widget>[ MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.white,
                appBar: AppBar(title:Text('New App')),
                body: SingleChildScrollView(
                    child: SafeArea(
                        child:Scrollbar(
                            child:Center(
                                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                                    children:[Table(
                                        border:TableBorder(
                                          horizontalInside: BorderSide.none,
                                          verticalInside:BorderSide.none,
                                          top:BorderSide(width:2),
                                            bottom:BorderSide(width:2),
                                              left:BorderSide(width:2),
                                              right:BorderSide(width:2)
                                        ),
                                        children:[
                                          TableRow(
                                              children: [

                                                Container(
                                                  color:Colors.yellowAccent,
                                                  height: 50,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),

                                                  child :Text('Thông tin hóa đơn:',

                                                    style: TextStyle(color:Colors.black),
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
                                                          flex:60,
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
                                                          flex:100,
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
                                                            child:Text(' Số Lượng Sách:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
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
                                                          flex:100,
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
                                                Row(
                                                    children:[
                                                      Spacer(
                                                        flex:6,
                                                      ),
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
                                                                      });
                                                                    },
                                                                  ),
                                                                    Text('Khách hàng là VIP'),
                                                                  ]
                                                              )
                                                          )
                                                      ),
                                                      Spacer(
                                                        flex:1,
                                                      ),

                                                    ]
                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [
                                                Container(
                                                  height:50,


                                                  child:Row(
                                                    children: [
                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white,
                                                            height:50,
                                                            padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                            child:Text(' Thành Tiền:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.black12,
                                                              padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:10),
                                                            height:50,
                                                              child:Center(
                                                             child: Text(TT??'',
                                                               style:TextStyle(color:Colors.green),
                                                             )
                                                              ),
                                                          ),
                                                          flex:100,
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

                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                      flex:12,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Tính TT'),
                                                        onPressed: (){
                                                          setState(() {
                                                            value = double.parse(myController2.text);
                                                            if(values1==true)
                                                              {
                                                                count=(value*20000*0.9).ceil();
                                                              }
                                                            if(values1==false)
                                                            {
                                                              count=(value*20000).ceil();
                                                            }
                                                            TT=count.toString();
                                                          });
                                                        },
                                                      ),


                                                    ),
                                                    Spacer(flex:1),
                                                    Flexible(
                                                      flex:12,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Tiếp'),
                                                        onPressed: (){sum+=1;
                                                        if(values1==true)
                                                        {
                                                          sumVip+=1;
                                                        }
                                                        sumMoney+=count;
                                                          setState(() {
                                                          count=0;
                                                          value=0;
                                                          myController1.text='';
                                                          myController2.text='';
                                                          TT='';
                                                          });
                                                        },
                                                      ),


                                                    ),
                                                    Spacer(flex:1),
                                                    Flexible(
                                                      flex:12,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Thống Kê'),
                                                        onPressed: (){
                                                          setState(() {
                                                            myController3.text=sum.toString();
                                                            myController4.text=sumVip.toString();
                                                            myController5.text=sumMoney.toString();

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
                                                  color:Colors.yellowAccent,
                                                  height: 50,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),

                                                  child :Text('Thông tin thống kê:',

                                                    style: TextStyle(color:Colors.black),
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
                                                            child:Text('  Tổng số KH:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:TextFormField(
                                                              enabled: false,
                                                              controller: myController3,
                                                              decoration: InputDecoration(

                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),


                                                              ),
                                                            ),
                                                          ),
                                                          flex:100,
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
                                                            child:Text('  Tổng số KH là vip:',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:TextFormField(
                                                              enabled: false,
                                                              controller: myController4,
                                                              decoration: InputDecoration(

                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),


                                                              ),
                                                            ),
                                                          ),
                                                          flex:100,
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
                                                            child:Text('  Tổng Doanh Thu',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:TextFormField(
                                                              enabled: false,
                                                              controller: myController5,
                                                              decoration: InputDecoration(

                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                                                                ),


                                                              ),
                                                            ),
                                                          ),
                                                          flex:100,
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
                                                  color:Colors.blue,



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
                                                      child : new IconButton(
                                                        onPressed: () {
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              return SimpleDialog(
                                                                  title: Text('go back?'),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.all(Radius.circular(
                                                                          2.0))),

                                                                  children:[
                                                                    Row(
                                                                      children:[
                                                                      SimpleDialogOption(
                                                                        onPressed: () {
                                                                          Navigator.pop(context);
                                                                        },
                                                                        child: const Text('no'),
                                                                      ),


                                                                        Spacer(flex:5),
                                                                        SimpleDialogOption(
                                                                          onPressed: () {
                                                                            Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => MySubApp(),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child: const Text('yes'),
                                                                        ),

                                                                      ],
                                                                    )
                                                                  ]
                                                              );
                                                            },

                                                          );
                                                        },
                                                       icon: Icon(Icons.power_settings_new_outlined,color:Colors.red),

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
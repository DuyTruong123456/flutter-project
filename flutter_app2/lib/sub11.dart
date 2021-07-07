import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'main.dart';
import'submain.dart';
import 'package:geolocator/geolocator.dart';
void main11() {
  runApp(MyApp11());
}

class MyApp11 extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
enum radio {check1,check2,check3 }
class _MyAppState extends State<MyApp11> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
var entries=['aaa'];
int check;
bool a=true;
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
                                                              style: TextStyle(color:Colors.red),
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
                                                              style: TextStyle(color:Colors.red),
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

                                          TableRow(children:[
                                            Container(

                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                        child: Container(
                                                          color:Colors.white,
                                                          height:50,
                                                          padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                          child:Text(' Ngày HT:',style: TextStyle(color:Colors.black),),
                                                        ),
                                                        flex:6,
                                                        fit:FlexFit.tight

                                                    ),

                                                    Flexible(
                                                        child: Container(
                                                          color:Colors.white60,
                                                          height:50,

                                                          child:TextFormField(
                                                            style: TextStyle(color:Colors.red),
                                                            controller: myController3,
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
                                                        flex:10,
                                                        fit:FlexFit.tight
                                                    ),
                                                    Spacer(
                                                      flex:1,
                                                    ),
                                                    Flexible(
                                                      flex:6,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Date'),
                                                        onPressed: (){
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              return SimpleDialog(

                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.all(Radius.circular(
                                                                          2.0))),

                                                                  children:[ Container(
                                                                        height: 200,
                                                                        child: CupertinoDatePicker(
                                                                          mode: CupertinoDatePickerMode.date,
                                                                          initialDateTime: DateTime(1969, 1, 1),

                                                                          onDateTimeChanged: (DateTime newDateTime) {
                                                                            myController3.text="";
                                                                            print(newDateTime);
                                                                            if(newDateTime.toString()[0]=="-")
                                                                              {
                                                                                for(int i=1;i<=10;i++)
                                                                                  {
                                                                                    myController3.text+=newDateTime.toString()[i];
                                                                                  }
                                                                              }
                                                                            if(newDateTime.toString()[0]!="-")
                                                                            {
                                                                              for(int i=0;i<10;i++)
                                                                              {
                                                                                myController3.text+=newDateTime.toString()[i];
                                                                              }
                                                                            }
                                                                          },
                                                                        ),
                                                                      ),

                                                                  ]
                                                              );
                                                            },

                                                          );
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

                                              child:Row(
                                                  children: [

                                                    Flexible(
                                                        child: Container(
                                                          color:Colors.white,
                                                          height:50,
                                                          padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                          child:Text(' Giờ HT:',style: TextStyle(color:Colors.black),),
                                                        ),
                                                        flex:6,
                                                        fit:FlexFit.tight

                                                    ),

                                                    Flexible(
                                                        child: Container(
                                                          color:Colors.white60,
                                                          height:50,

                                                          child:TextFormField(
                                                            style: TextStyle(color:Colors.red),
                                                            controller: myController4,
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
                                                        flex:10,
                                                        fit:FlexFit.tight
                                                    ),
                                                    Spacer(
                                                      flex:1,
                                                    ),
                                                    Flexible(
                                                      flex:6,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Time'),
                                                        onPressed: (){
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              return SimpleDialog(

                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.all(Radius.circular(
                                                                          2.0))),

                                                                  children:[
                                                                    Container(
                                                                      height: 200,
                                                                      child: CupertinoDatePicker(
                                                                        mode: CupertinoDatePickerMode.time,
                                                                        initialDateTime: DateTime(00, 00),

                                                                        onDateTimeChanged: (DateTime newDateTime) {
                                                                          print(newDateTime);
                                                                          setState(() {

                                                                            myController4.text=newDateTime.hour.toString();
                                                                            myController4.text+=":";
                                                                            if(newDateTime.minute%60<10)
                                                                            {
                                                                              myController4.text+="0";
                                                                            }
                                                                            myController4.text+=(newDateTime.minute%60).toString();

                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ]
                                                              );
                                                            },

                                                          );
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

                                              child:Row(
                                                  children: [


                                                    Spacer(flex:1),
                                                    Flexible(
                                                      flex:12,
                                                      fit:FlexFit.tight,
                                                      child :ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                        ),
                                                        child:Text('Thêm'),
                                                        onPressed:(){
                                                          setState(() {
                                                            var work=myController1.text+"-"+myController2.text+"-"+myController3.text+"-"+myController4.text;
                                                            entries.add(work);

                                                          });
                                                        } ,

                                                      ),


                                                    ),
                                                    Spacer(flex:1),

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
                                                  color:Colors.white,
                                                  height: 500,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                  child:  ListView.builder(
                                                      padding: const EdgeInsets.all(8),
                                                      itemCount: entries.length-1,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        check=index;
                                                        GlobalKey key = GlobalKey();
                                                        return Container(
                                                          height: 50,
                                                            child:ElevatedButton(
                                                              style: ButtonStyle(
                                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                              ),
                                                              key: key,
                                                            child:Text(entries[index+1]),
                                                              onLongPress:(){
                                                                RenderBox box = key.currentContext.findRenderObject();
                                                                Offset position = box.localToGlobal(Offset.zero);
                                                                var x=position.dx;
                                                                var y=position.dy;
                                                                return showMenu(
                                                                    context: context,
                                                                    position: RelativeRect.fromLTRB(x, y, 100, 100),
                                                                    items: [
                                                                PopupMenuItem(
                                                                value: 1,
                                                                child: ElevatedButton(
                                                                  style: ButtonStyle(
                                                                      backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                      foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                                  ),
                                                                  onPressed: () {
                                                                    var myController11=TextEditingController();
                                                                    var myController22=TextEditingController();
                                                                    var myController33=TextEditingController();
                                                                    var myController44=TextEditingController();
                                                                    showDialog(
                                                                      context: context,
                                                                      builder: (BuildContext context) {
                                                                        return SimpleDialog(
                                                                            title: Text('Sửa'),
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(
                                                                                    2.0))),

                                                                            children:[
                                                                              Row(
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
                                                                                          style: TextStyle(color:Colors.red),
                                                                                          controller: myController11,
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
                                                                              Row(
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
                                                                                          style: TextStyle(color:Colors.red),
                                                                                          controller: myController22,
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
                                                                              Row(
                                                                                  children: [

                                                                                    Flexible(
                                                                                        child: Container(
                                                                                          color:Colors.white,
                                                                                          height:50,
                                                                                          padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                                                          child:Text(' Ngày HT:',style: TextStyle(color:Colors.black),),
                                                                                        ),
                                                                                        flex:6,
                                                                                        fit:FlexFit.tight

                                                                                    ),

                                                                                    Flexible(
                                                                                        child: Container(
                                                                                          color:Colors.white60,
                                                                                          height:50,

                                                                                          child:TextFormField(
                                                                                            style: TextStyle(color:Colors.red),
                                                                                            controller: myController33,
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
                                                                                        flex:10,
                                                                                        fit:FlexFit.tight
                                                                                    ),
                                                                                    Spacer(
                                                                                      flex:1,
                                                                                    ),
                                                                                    Flexible(
                                                                                      flex:6,
                                                                                      fit:FlexFit.tight,
                                                                                      child :ElevatedButton(
                                                                                        style: ButtonStyle(
                                                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                                                        ),
                                                                                        child:Text('Date'),
                                                                                        onPressed: (){
                                                                                          showDialog(
                                                                                            context: context,
                                                                                            builder: (BuildContext context) {
                                                                                              return SimpleDialog(

                                                                                                  shape: RoundedRectangleBorder(
                                                                                                      borderRadius: BorderRadius.all(Radius.circular(
                                                                                                          2.0))),

                                                                                                  children:[ Container(
                                                                                                    height: 200,
                                                                                                    child: CupertinoDatePicker(
                                                                                                      mode: CupertinoDatePickerMode.date,
                                                                                                      initialDateTime: DateTime(1969, 1, 1),

                                                                                                      onDateTimeChanged: (DateTime newDateTime) {
                                                                                                        myController33.text="";
                                                                                                        print(newDateTime);
                                                                                                        if(newDateTime.toString()[0]=="-")
                                                                                                        {
                                                                                                          for(int i=1;i<=10;i++)
                                                                                                          {
                                                                                                            myController33.text+=newDateTime.toString()[i];
                                                                                                          }
                                                                                                        }
                                                                                                        if(newDateTime.toString()[0]!="-")
                                                                                                        {
                                                                                                          for(int i=0;i<10;i++)
                                                                                                          {
                                                                                                            myController33.text+=newDateTime.toString()[i];
                                                                                                          }
                                                                                                        }
                                                                                                      },
                                                                                                    ),
                                                                                                  ),

                                                                                                  ]
                                                                                              );
                                                                                            },

                                                                                          );
                                                                                        },
                                                                                      ),


                                                                                    )
                                                                                  ]

                                                                              ),
                                                                              Row(
                                                                                  children: [

                                                                                    Flexible(
                                                                                        child: Container(
                                                                                          color:Colors.white,
                                                                                          height:50,
                                                                                          padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                                                          child:Text(' Giờ HT:',style: TextStyle(color:Colors.black),),
                                                                                        ),
                                                                                        flex:6,
                                                                                        fit:FlexFit.tight

                                                                                    ),

                                                                                    Flexible(
                                                                                        child: Container(
                                                                                          color:Colors.white60,
                                                                                          height:50,

                                                                                          child:TextFormField(
                                                                                            style: TextStyle(color:Colors.red),
                                                                                            controller: myController44,
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
                                                                                        flex:10,
                                                                                        fit:FlexFit.tight
                                                                                    ),
                                                                                    Spacer(
                                                                                      flex:1,
                                                                                    ),
                                                                                    Flexible(
                                                                                      flex:6,
                                                                                      fit:FlexFit.tight,
                                                                                      child :ElevatedButton(
                                                                                        style: ButtonStyle(
                                                                                            backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                                            foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                                                        ),
                                                                                        child:Text('Time'),
                                                                                        onPressed: (){
                                                                                          showDialog(
                                                                                            context: context,
                                                                                            builder: (BuildContext context) {
                                                                                              return SimpleDialog(

                                                                                                  shape: RoundedRectangleBorder(
                                                                                                      borderRadius: BorderRadius.all(Radius.circular(
                                                                                                          2.0))),

                                                                                                  children:[
                                                                                                    Container(
                                                                                                      height: 200,
                                                                                                      child: CupertinoDatePicker(
                                                                                                        mode: CupertinoDatePickerMode.time,
                                                                                                        initialDateTime: DateTime(00, 00),

                                                                                                        onDateTimeChanged: (DateTime newDateTime) {
                                                                                                          print(newDateTime);
                                                                                                          setState(() {

                                                                                                            myController44.text=newDateTime.hour.toString();
                                                                                                            myController44.text+=":";
                                                                                                            if(newDateTime.minute%60<10)
                                                                                                            {
                                                                                                              myController44.text+="0";
                                                                                                            }
                                                                                                            myController44.text+=(newDateTime.minute%60).toString();

                                                                                                          });
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  ]
                                                                                              );
                                                                                            },

                                                                                          );
                                                                                        },
                                                                                      ),


                                                                                    )
                                                                                  ]

                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  SimpleDialogOption(
                                                                                    onPressed: (){
                                                                                      setState(() {
                                                                                        entries[index+1]=myController11.text+"-"+myController22.text+"-"+myController33.text+"-"+myController44.text;
                                                                                        Navigator.pop(context, true);
                                                                                      });
                                                                                    },
                                                                                    child: Text('yes'),
                                                                                  ),
                                                                                  Spacer(flex:5),
                                                                                  SimpleDialogOption(
                                                                                    onPressed: () {
                                                                                      Navigator.pop(context, false);
                                                                                    },
                                                                                    child: const Text('no'),
                                                                                  ),
                                                                                ],
                                                                              )
                                                                            ]
                                                                        );
                                                                      },

                                                                    );
                                                                  },
                                                                child:Text("Sửa"),
                                                                )
                                                                ),
                                                                      PopupMenuItem(
                                                                          value: 1,
                                                                          child: ElevatedButton(
                                                                            style: ButtonStyle(
                                                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                                            ),
                                                                            child:Text("Xóa"),
                                                                            onPressed:(){
                                                                              setState(() {

                                                                                {entries.remove(entries[index+1]);}

                                                                              });
                                                                            },
                                                                          )
                                                                      ),
                                                                      PopupMenuItem(
                                                                          value: 1,
                                                                          child: ElevatedButton(
                                                                            style: ButtonStyle(
                                                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                                            ),
                                                                            child:Text("Đếm CV"),
                                                                            onPressed: () {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (BuildContext context) {
                                                                                return SimpleDialog(
                                                                                    title: Text((check+1).toString()),
                                                                              shape: RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.all(Radius.circular(
                                                                              2.0))));

                                                                              });
                                                                            },
                                                                          )
                                                                      ),
                                                                ],
                                                                elevation: 8.0,
                                                                );
                                                              },
                                                            )

                                                            );
                                                      }
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
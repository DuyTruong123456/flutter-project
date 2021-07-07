import 'package:flutter/material.Dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/services.dart';
import'sub1.dart';
import'sub2.dart';
import'sub16.dart';
import'sub17.dart';
import'sub22.dart';
import'submain.dart';
void main() {
  runApp(new MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return new MaterialPageRoute<Null>(
            settings: settings,
            builder: (_) => new MyApp(),
            maintainState: false,
          );
        }
        return null;
      }
  ));


}

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  int start=10;
  int checktimer=1;
  var valuestart='10';
  Timer _time;
  bool a=false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('math program')
      ),
      body: new Center(
          child: SafeArea(
          child:Scrollbar(
          child:SingleChildScrollView(
          child:Column(
          children:<Widget>[

             Row(
               children: [
                 Flexible(
                     child: Container(
                       color:Colors.white,
                       height:50,
                       padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                       child:Text('  Tài Khoản:',style: TextStyle(color:Colors.black),),
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
             Row(
               children: [
                 Flexible(
                     child: Container(
                       color:Colors.white,
                       height:50,
                       padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                       child:Text('  Mật Khẩu:',style: TextStyle(color:Colors.black),),
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
                         obscureText: true,
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
             new ElevatedButton(
              onPressed: () {
                if (myController1.text == '' &&
                    myController2.text =='') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MySubApp(),
                    ),
                  );
                }

                else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text('Sai tài khoản hoặc mật khẩu!'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                2.0))),

                      );
                    },

                  );
                }
              },
              child: new Text('log in'),
            ),
            new ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('exit?'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              2.0))),

                        children:[
                        Row(
                          children: [
                            SimpleDialogOption(
                              onPressed: (){
                                a=true;
                                checktimer=1;
                                Navigator.pop(context);
                                if(checktimer==1)
                     { const oneSec = const Duration(seconds: 1);
                      _time=Timer.periodic(oneSec, (time) {
                        if(checktimer==0)
                        setState(() {time.cancel();});
                        if (start == 0&&checktimer==1) {
                          setState(() {

                            valuestart=start.toString();
                            time.cancel();
                            SystemNavigator.pop();
                          });
                        } if (start != 0&&checktimer==1) {
                          setState(() {
                            start--;
                            valuestart=start.toString();

                          });}
                      });}
                    },
                              child: Text('yes'),
                            ),
                            Spacer(flex:5),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context);
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


              child: new Text('exit'),
            ),
           Visibility(
             visible: a,
             child:new ElevatedButton(
              onPressed: () {
                setState(() {
                  a=false;
                  checktimer=0;
                start=10;
                valuestart=start.toString();
                });},
              child: new Text('close in: '+valuestart+' sec.Press to stop'),
            ),
           ),
          ]
            ),


      ),
    )
    )
    )

    );
  }
}

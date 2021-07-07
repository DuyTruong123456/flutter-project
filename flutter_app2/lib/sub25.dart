import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:math';
import 'package:async/async.dart';
import'main.dart';
import'submain.dart';
void main10() {

  runApp(MyApp25());

}

class MyApp25 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}

Random random = new Random();
int randomNumber = random.nextInt(100);
class MyAppState extends State<MyApp25> {
double way=2;
double a=10,b=20;
Timer _timer,_timer1,_timer2;
int _start = 0;
int direction=0;
bool count=false;
double c=10,e=10;

double d=10;
var visi=false;
  @override

  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double height1 = height - padding.top - padding.bottom;
   // d=height1-200;
    void startTimer() {
      const oneSec = const Duration(milliseconds: 50);
      _timer = new Timer.periodic(
        oneSec,
            (Timer timer) {


          setState(() {
            _start++;
            _start=_start%14;
            a+=way;
          });
          if(direction>=2)b+=15;
          //print(a);

          if(a<10)
            {

            setState(() {

              way=2;
              if(direction<2)direction=1;
            });

            }
          if(a>width*6/7)
          {

          setState(() {

            way=-2;
            if(direction<2)direction=0;
          });


          }
          print(b);
          if(b+height/2-150>height1)
          {

          _timer.cancel();
          }
        },
      );
    }
    var time=0;
    void startTimer1() {
      const Sec = const Duration(seconds: 1);
      _timer1 = new Timer.periodic(
        Sec,
            (Timer timer) {


          setState(() {
            if(b+height/2>height1)
            {
              time++;
              if(time==3)
                { print(time);
                  time=0;
                  _timer1.cancel();
                  direction=random.nextInt(2);
                  if(direction==1){way=1;a=0;}
                  if(direction==0){way=-1;a=width-50;}
                  if(count==true)_timer.cancel();
                  count=true;
                  b=random.nextInt(300).toDouble();
                  startTimer();
                }
            }
          });}
              );
    }

    return SafeArea(child:
      Stack(
        children:<Widget>[

          MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.white,

                body:SizedBox(child:
                Stack(
                    fit: StackFit.expand,
                        children:[
                          Container(child:Image.asset('image/night.jpg' ,fit: BoxFit.cover),
                            constraints: BoxConstraints.expand(),
                            height:height,
                            width:width+200,

                          ),


                          Row(
                          children:[

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                          ElevatedButton(onPressed: (){
                            setState(() {
                              direction=random.nextInt(2);
                              if(direction==1){way=1;a=0;}
                              if(direction==0){way=-1;a=width-50;}
                              if(count==true)_timer.cancel();
                              count=true;
                              b=random.nextInt(300).toDouble();
                              visi=true;
                              startTimer();

                              void startTimer2() {
                                const Sec2 = const Duration(milliseconds: 50);
                                _timer2 = new Timer.periodic(
                                    Sec2,
                                        (Timer timer) {

                                        print(d);
                                      setState(() {

                                        d-=10;
                                        visi=true;
                                        if(d<=0){d=height1-200;
                                        visi=false;}
                                        if(visi==false)e=c;
                                        if(direction<2&&d>b) {
                                          if (d <= b + 50 && a >= e &&
                                              a <= e + 100) {
                                            d=height1-200;
                                            visi=false;
                                            direction += 2;
                                            startTimer1();
                                          }
                                          if (d <= b + 50 && a + 50 >= e &&
                                              a + 50 <= e + 100) {
                                            d=height1-200;
                                            visi=false;
                                            direction += 2;
                                            startTimer1();
                                          }
                                          if (d <= b + 50 && a >= e &&
                                              a + 50 <= e + 100) {
                                            d=height1-200;
                                            visi=false;
                                            direction += 2;
                                            startTimer1();
                                          }
                                        }
                                      });
                                    }
                                );
                              }
                              startTimer2();
                            });

                          },
                              child: Text('start')),


                        Row(
                            children:[

                              Stack(
                                  children:[

                              if(direction==1)


                              Container(

                                padding: EdgeInsets.only(left:a,top:b),
                                child:IndexedStack(

                                  index:_start,
                                  children:[

                                for(int i=14;i>=1;i--)
                                  SizedBox(
                                    child:GestureDetector(

                                    child: Image.asset('image/chim'+i.toString()+'.png'),

                                    ),
                                    height:50,
                                    width:50,
                                  ),




                            ]
                        ),
                              ),



                              if(direction==0)
                                      Container(

                                  padding: EdgeInsets.only(left:a,top:b),
                                  child:IndexedStack(

                                      index:_start,
                                      children:[

                                        for(int i=14;i>=1;i--)
                                          Transform(
                                            alignment: Alignment.center,
                                            transform:Matrix4.rotationY(math.pi),
                                            child:SizedBox(
                                             child: GestureDetector(

                                                child: Image.asset('image/chim'+i.toString()+'.png'),

                                               onTap:(){direction+=2;
                                               startTimer1();
                                               } ,
                                              ),
                                              height:50,
                                              width:50,
                                            ),
                                          ),



                                      ]
                                  ),
                                ),


                              if(direction==3)


                                      Container(

                                      padding: EdgeInsets.only(left:a,top:b),
                                      child:IndexedStack(

                                          index:_start,
                                          children:[

                                            for(int i=14;i>=1;i--)
                                              Transform(
                                                alignment: Alignment.center,
                                                transform:Matrix4.rotationX(math.pi),
                                                child:SizedBox(
                                                  child: Image.asset('image/chim13.png'),
                                                  height:50,
                                                  width:50,
                                                ),
                                              ),



                                          ]
                                      ),
                                    ),


                              if(direction==2)
                               
                                      Container(

                                      padding: EdgeInsets.only(left:a,top:b),
                                      child:IndexedStack(

                                          index:_start,
                                          children:[

                                            for(int i=14;i>=1;i--)
                                              Transform(
                                            child:  Transform(
                                                alignment: Alignment.center,
                                                transform:Matrix4.rotationX(math.pi),
                                                child:SizedBox(
                                                  child: Image.asset('image/chim13.png'),
                                                  height:50,
                                                  width:50,
                                                ),
                                              ),
                                                alignment: Alignment.center,
                                                transform:Matrix4.rotationY(math.pi),

                                              )
                                          ]
                                      ),
                                    ),

                                    ]
                                ),
                      ]
                        ),
                              Spacer(
                                  flex:5
                              ),




                          ]

                        ),



                        ]
                        ),
                          Positioned(child:
                          Visibility(visible: visi,
                            child: Container(child:GestureDetector(
                            child: Image.asset('image/fireball.png'),

                          ),
                            height:100,
                            width:100,
                          ),
                          ),
                            left:e,
                            top:d,
                          ),

                          Positioned(child:

                          Container(child:GestureDetector(
                            child: Image.asset('image/plane.png'),
                            onHorizontalDragStart: (DragStartDetails detail)
                            {
                              print('start');
                              print(detail.globalPosition);
                            },
                            onHorizontalDragUpdate: (DragUpdateDetails detail)
                            {
                              print('start');
                              print(detail.globalPosition);
                              setState(() {

                                c=detail.globalPosition.dx-50;
                                if(c>=width-100)c=width-100;
                                if(c<=0)c=0;
                                if(visi==false)e=c;

                              });

                            },
                          ),
                            height:100,
                            width:100,
                          ),
                            left:c,
                            top:height1-100,
                          )


                   ]
                )
                )

                )



          )]
      )
    );

  }


}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import'main.dart';
import'submain.dart';
void main10() {

  runApp(MyApp24());

}

class MyApp24 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}
List index=[];
List backcolor=[];
void value() {
  for(int i=0;i<=100;i++)
  {
    backcolor.add(Colors.white);
  }
}
void timer1()
{
  Timer _timer;
  int _start = 10;
  const oneSec = const Duration(seconds: 1);
  _timer = new Timer.periodic(
    oneSec,
        (Timer timer) {
      if (_start == 0) {

          timer.cancel();

      } else {

          _start--;

      }
    },
  );
  print(_start);
}
void singlebrick(int i,int j)
{
  backcolor[10*i+j-10]=Colors.red;

}
void squarebrick(int i,int j)
{
  backcolor[10 * i + j - 10] = Colors.red;
  backcolor[10 * i + j - 9] = Colors.red;
  if(10 * i + j - 10-10>0)
  {backcolor[10 * i + j - 9-10] = Colors.red;
  backcolor[10 * i + j - 10-10] = Colors.red;
  }
}
void cleansquarebrick(int i,int j)
{
  if(i>=1&&i+1<=10)
    {
      backcolor[10 * i + j - 10] = Colors.white;
      backcolor[10 * i + j - 9] = Colors.white;
    }

  if(i>=1&&backcolor[10*(i+2)+j-10]==Colors.white)
  {
    backcolor[10 * i + j - 10] = Colors.white;
    backcolor[10 * i + j - 9] = Colors.white;
  }
}
class MyAppState extends State<MyApp24> {
  int a=1,b=5;
  @override

  Widget build(BuildContext context) {
    value();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
        children:<Widget>[ MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(title:Text('New App')),
                body: SafeArea(
                    child:Center(
                        child: Column( mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              for(int i=1;i<=10;i++)
                                Row(
                                    children:[
                                      for(int j=1;j<=10;j++)
                                        Flexible(flex: 1,
                                          child:SizedBox(child:
                                          ElevatedButton(
                                            style:ButtonStyle(
                                              backgroundColor:MaterialStateProperty.all<Color>(backcolor[10*i+j-10]),
                                              foregroundColor:MaterialStateProperty.all<Color>(Colors.black),
                                              shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                            ),
                                              child:Text((10*i+j-10).toString(),style:TextStyle(fontSize:15),),
                                          ),
                                            width:width/10,
                                            height:width/10,
                                          ),

                                        )
                                    ]

                                ),
                                Row(
                                  children: [
                                    SizedBox(child:
                                    ElevatedButton(
                                      onPressed: (){

                                        setState(() {

                                          Timer _timer;
                                          int _start = 2;

                                          const oneSec = const Duration(seconds: 1);
                                          _timer = new Timer.periodic(
                                            oneSec,
                                                (Timer timer) {
                                               {
                                                setState(() {
                                                  for(int i=1;i<=10;i++)
                                                    {
                                                      for(int j=1;j<=10;j++)
                                                        {
                                                          if(i<=10)
                                                            {
                                                              if(backcolor[10*(i+1)+j-10]==Colors.white&&backcolor[10*i+j-10]==Colors.red)
                                                                {cleansquarebrick(i-1, j);
                                                                  squarebrick(i+1,j);
                                                                i=11;
                                                                break;
                                                                }
                                                            }
                                                        }
                                                    }
                                                });
                                              }
                                            },
                                          );



                                        });
                                      },
                                      style:ButtonStyle(
                                        backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:MaterialStateProperty.all<Color>(Colors.black),
                                        shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                      ),
                                      child:Text(''),
                                    ),
                                      width:30,
                                      height:30,
                                    ),
                                  ],
                                ),
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {



                                  });
                                },
                                style:ButtonStyle(
                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.black),
                                  shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                ),
                                child:Text('left'),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {

                                  });
                                },
                                style:ButtonStyle(
                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.black),
                                  shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                ),
                                child:Text('right'),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    squarebrick(1,5);
                                  });
                                },
                                style:ButtonStyle(
                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.black),
                                  shape:MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(side:BorderSide())),

                                ),
                                child:Text('drop'),
                              ),
                            ]
                        )
                    )

                )
            )
        )
        ]

    );
  }


}

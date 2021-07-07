import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main10() {

  runApp(MyApp10());

}

class MyApp10 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}

var i=0;
class MyAppState extends State<MyApp10> {

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
                                    children:[
                                      Row(
                                        children: [
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){
                                              i=1;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                          child: Image.asset('image/pic1.jpg',
                                            width:100,
                                            height:100,
                                         ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=2;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic2.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=3;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic3.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=1;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic1.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=2;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic2.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=3;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic3.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=1;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic1.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=2;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic2.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                          GestureDetector(
                                            onTap:(){i=3;
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context)=>PopUp(),
                                              ),
                                            );
                                            },
                                            child: Image.asset('image/pic3.jpg',
                                              width:100,
                                              height:100,
                                            ),
                                          ),
                                          Spacer(flex:1),
                                        ],
                                      ),
                                      Row(
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

                                    ]
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
class PopUp extends StatefulWidget {

  @override
  MyAppStatePopUp createState() => MyAppStatePopUp();
}


class MyAppStatePopUp extends State<PopUp> {

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
                                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                      Row(mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if(i==1)
                                          GestureDetector(child:  Image.asset('image/pic1.jpg',width:MediaQuery.of(context).size.width,)),
                                          if(i==2)
                                            GestureDetector(child:  Image.asset('image/pic2.jpg',width:MediaQuery.of(context).size.width,)),
                                          if(i==3)
                                            GestureDetector(child:  Image.asset('image/pic3.jpg',width:MediaQuery.of(context).size.width,)),
                                           ]
                                          ),
                                      Row(
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
                                                    builder: (context)=>MyApp10(),
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
                            )
                        )
                    )
                )
            )

        ]

    );
  }


}
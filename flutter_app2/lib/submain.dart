import 'package:flutter/material.Dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import'sub1.dart';
import'sub2.dart';
import'sub3.dart';
import'sub4.dart';
import'sub5.dart';
import'sub6.dart';
import'sub7.dart';
import'sub8.dart';
import'sub9.dart';
import'sub10.dart';
import'sub11.dart';
import'sub12.dart';
import'sub13.dart';
import'sub14.dart';
import'sub15.dart';
import'sub17.dart';
import'sub19.dart';
import'sub20.dart';
import'sub21.dart';
import'sub22.dart';
import'sub23.dart';
import'sub24.dart';
import'sub25.dart';
void submain() {
  runApp(new MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return new MaterialPageRoute<Null>(
            settings: settings,
            builder: (_) => new MySubApp(),
            maintainState: false,
          );
        }
        return null;
      }
  ));
}

class MySubApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MySubApp> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(length:2,
      child: Scaffold(
      appBar: AppBar(
          bottom: TabBar(
            tabs: [

              Tab(icon: Icon(Icons.add_circle_outline_rounded)),
              Tab(icon: Icon(Icons.add_circle_outline_rounded)),

            ],
          ),
          title: new Text('math program')
      ),
        body:TabBarView(

       children:[ Center(
            child: SafeArea(
            child:Scrollbar(
            child:SingleChildScrollView(
            child:Column(
          children:<Widget>[

            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp7(),
                    ),
                  );
                  },
                  child: new Text('count'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp8(),
                    ),
                  );
                  },
                  child: new Text('listview'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp9(),
                    ),
                  );
                  },
                  child: new Text('listview advanced'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp10(),
                    ),
                  );
                  },
                  child: new Text('picture view'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp11(),
                    ),
                  );
                  },
                  child: new Text('Date view'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp12(),
                    ),
                  );
                  },
                  child: new Text('HTML'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp13(),
                    ),
                  );
                  },
                  child: new Text('get location'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp15(),
                    ),
                  );
                  },
                  child: new Text('sql lite'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp17(),
                    ),
                  );
                  },
                  child: new Text('barcode'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp19(),
                    ),
                  );
                  },
                  child: new Text('RFID'),
                ),
                ]
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
                children:[ ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyApp20(),
                    ),
                  );
                  },
                  child: new Text('RFID II'),
                ),
                ]
            ),
          ]
      ),
    ) ))),
         Center(
             child: SafeArea(
                 child:Scrollbar(
                     child:SingleChildScrollView(
                       child:Column(
                           children:<Widget>[
                             Row( mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                                   new ElevatedButton(
                                     onPressed: () {Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                         builder: (context)=>MyApp6(),
                                       ),
                                     );
                                     },
                                     child: new Text('Phone number'),
                                   ),]
                             ),
                             Row( mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                                   new ElevatedButton(
                                     onPressed: () {Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                         builder: (context)=>MyApp2(),
                                       ),
                                     );
                                     },
                                     child: new Text('convert C to F and reverse'),
                                   ),]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp1(),
                                     ),
                                   );
                                   },
                                   child: new Text('Basic Calculator'),
                                 ),
                                 ]
                             ),Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp3(),
                                     ),
                                   );
                                   },
                                   child: new Text('Real Calculator'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp4(),
                                     ),
                                   );
                                   },
                                   child: new Text('change year'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp5(),
                                     ),
                                   );
                                   },
                                   child: new Text('info'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp14(),
                                     ),
                                   );
                                   },
                                   child: new Text('intent'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp15(),
                                     ),
                                   );
                                   },
                                   child: new Text('intent2'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp21(),
                                     ),
                                   );
                                   },
                                   child: new Text('dictionary'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp22(),
                                     ),
                                   );
                                   },
                                   child: new Text('voice record'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp23(),
                                     ),
                                   );
                                   },
                                   child: new Text('caro'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp24(),
                                     ),
                                   );
                                   },
                                   child: new Text('brick'),
                                 ),
                                 ]
                             ),
                             Row(mainAxisAlignment:MainAxisAlignment.center,
                                 children:[ ElevatedButton(
                                   onPressed: () {Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context)=>MyApp25(),
                                     ),
                                   );
                                   },
                                   child: new Text('shooter'),
                                 ),
                                 ]
                             ),
                           ]
                       ),
                     )
                 )
             )
         )
    ])
        )
        )
    );
  }
}
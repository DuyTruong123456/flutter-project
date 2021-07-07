import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main8() {

  runApp(MyApp8());

}

class MyApp8 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}
enum radio {check1,check2,check3 }

class MyAppState extends State<MyApp8 > {

  var entries = ['A','B','C'];
  final myController1 = TextEditingController();
var value;
List<Color> indexcolor=[Colors.white,Colors.white,Colors.white];

List<bool> indexarr=[true,true,true];

  bool values1=false;
int count=2;
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
                                                            child:Text('  nhập danh sách:',style: TextStyle(color:Colors.black),),
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
                                                        onPressed: (){
                                                        setState(() {
                                                          if(myController1.text!=null)
                                                          entries.add(myController1.text);
                                                          indexarr.add(true);
                                                          indexcolor.add(Colors.white);
                                                          count+=1;
                                                        });
                                                        },
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

                                                  child :Text(value??'',

                                                    style: TextStyle(color:Colors.black),
                                                    textAlign: TextAlign.center,
                                                  ),


                                                )
                                              ]
                                          ),
                                          TableRow(
                                              children: [

                                                Container(
                                                  color:Colors.yellowAccent,
                                                  height: 500,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                  child:  ListView.builder(
                                                      padding: const EdgeInsets.all(8),
                                                      itemCount: entries.length,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        return Container(
                                                          height: 50,
                                                          child:ElevatedButton(

                                                            style: ButtonStyle(
                                                                backgroundColor:MaterialStateProperty.all<Color>(indexcolor[index]),
                                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                            ),
                                                            child: Text(entries[index]),
                                                            onPressed: (){
                                                              setState(() {
                                                                value="position "+index.toString()+" value "+entries[index];
                                                                for(int i=0;i<=count;i++)
                                                                  {
                                                                    if(i==index)
                                                                      {

                                                                        indexcolor[i]=Colors.lightBlueAccent;
                                                                      }
                                                                    else
                                                                      {
                                                                        indexcolor[i]=Colors.white;
                                                                      }
                                                                  }
                                                              });
                                                            },
                                                          ),


                                                        );
                                                      }
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
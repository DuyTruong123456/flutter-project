import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'main.dart';
import'sub16.dart';
import'sub11.dart';
import 'package:geolocator/geolocator.dart';
void main11() {
  runApp(MyApp15());
}

class MyApp15 extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
enum radio {check1,check2,check3 }
final myController1 = TextEditingController();
final myController2 = TextEditingController();
final myController3 = TextEditingController();
final myController4 = TextEditingController();
final myController5 = TextEditingController();
var myController11=TextEditingController();
var myController22=TextEditingController();
int check;
bool a=true;
List<String> maAlbum = <String>[];
List<String> tenAlbum = <String>[];
class _MyAppState extends State<MyApp15> {

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

                                                        showDialog(context: context, builder: (BuildContext context) {
                                                        return SimpleDialog(
                                                          title: Text('Sửa'),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(
                                                                  2.0))),
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Container(
                                                                      color:Colors.white,
                                                                      height:50,
                                                                      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                                      child:Text('  Mã Album:',style: TextStyle(color:Colors.black),),
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
                                                                      child:Text(' Tên album:',style: TextStyle(color:Colors.black),),
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
                                                                SimpleDialogOption(
                                                                  onPressed: (){
                                                                    setState(() {
                                                                      maAlbum.add(myController11.text);
                                                                      tenAlbum.add(myController22.text);
                                                                      print(maAlbum);
                                                                      print(tenAlbum);

                                                                    });


                                                                  },
                                                                  child: Text('Thêm'),
                                                                ),
                                                                Spacer(flex:5),
                                                                SimpleDialogOption(
                                                                  onPressed: () {setState(() {
                                                                    myController11.text="";
                                                                    myController22.text="";
                                                                  });

                                                                  },
                                                                  child: const Text('Xóa'),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        );
                                                        } ,

                                                      );}

                                                      )
                                                    ),
                                                    Spacer(flex:1),

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
                                                          Navigator.pop(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context)=>MyApp11(),
                                                            ),
                                                          );
                                                          setState(() {


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
class listview extends StatefulWidget {

  @override
  view createState() => view();
}
class view extends State<listview>
{final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(title: Text('New App')),
                body: SingleChildScrollView(
                    child: SafeArea(
                        child: Scrollbar(
                            child:  Column(
                                children:[Container(
                                  height:500,
                            child:ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount: entries.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 50,
                                    color: Colors.amber[colorCodes[index]],
                                    child: Center(child: Text('Entry ${entries[index]}')),
                                  );
                                }
                            ))]
                               )

                                )
                            )
                        )
                    )



    );
  }
}
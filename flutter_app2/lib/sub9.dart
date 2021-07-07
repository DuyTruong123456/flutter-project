import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
void main9() {

  runApp(MyApp9());

}

class MyApp9 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}
enum radio {check1,check2,check3 }

class MyAppState extends State<MyApp9> {

  static  List<String> entries = <String>['Samsung','Apple','Vsmart'];
  static List<String> entries1=<String>['Samsung','Apple','Vsmart'];
  static  List<String> entries2=<String>['Lenovo','Intel','Apple'];
  static  List<String> entries3=<String>['HADD','IKSH','KHFF'];

var d;
  final myController1 = TextEditingController();
  var value;
  List<Color> indexcolor=[Colors.white,Colors.white,Colors.white];

  List<bool> indexarr=[true,true,true];
var dropdownValue="Điện Thoại";
  bool values1=false;
  int count1=2;
  int count2=2;
  int count3=2;
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

                                                            child:DropdownButton<String>(
                                                              value: dropdownValue,
                                                              icon: const Icon(Icons.arrow_drop_down),
                                                              iconSize: 24,
                                                              elevation: 16,
                                                              isExpanded: true,
                                                              style: const TextStyle(color: Colors.black),
                                                              focusColor: Colors.white,
                                                              dropdownColor: Colors.white,
                                                              onChanged: (String newValue) {
                                                                setState(() {
                                                                  dropdownValue = newValue;
                                                                  if(dropdownValue=="Điện Thoại")
                                                                  {entries=[];
                                                                    entries.length=entries1.length;
                                                                    entries = entries1;
                                                                    for (int i = 0; i < entries1.length; i++) {
                                                                    entries[i]=entries1[i];
                                                                    print(entries[i]);
                                                                  }}
                                                                  if(dropdownValue=="Máy Tính")
                                                                  {entries=[];
                                                                    entries.length=entries2.length;
                                                                  entries = entries2;
                                                                    for (int i = 0; i < entries2.length; i++) {
                                                                    entries[i]=entries2[i];
                                                                    print(entries[i]);
                                                                  }}
                                                                  if(dropdownValue=="Đồng Hồ")
                                                                  { entries=[];
                                                                    entries.length=entries3.length;
                                                                  entries = entries3;
                                                                    for (int i = 0; i < entries3.length; i++) {
                                                                    entries[i]=entries3[i];
                                                                    print(entries[i]);
                                                                  }}
                                                                });
                                                              },
                                                              items: <String>['Điện Thoại', 'Máy Tính', 'Đồng Hồ']
                                                                  .map<DropdownMenuItem<String>>((String value) {
                                                                return DropdownMenuItem<String>(
                                                                  value: value,
                                                                  child: Text(value),
                                                                );
                                                              }).toList(),
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
                                                            child:Text('  tìm kiếm',style: TextStyle(color:Colors.black),),
                                                          ),
                                                          flex:60,
                                                          fit:FlexFit.tight

                                                      ),

                                                      Flexible(
                                                          child: Container(
                                                            color:Colors.white60,
                                                            height:50,

                                                            child:Autocomplete(
                                                                optionsBuilder: (TextEditingValue a) {


                                                                  d=a.text;
                                                                  if (a.text == '') {
                                                                    return const Iterable<String>.empty();
                                                                  }

                                                                  return entries.where((String option) {
                                                                    return option.contains(a.text);
                                                                  });
                                                                } ,

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
                                                            if(dropdownValue=="Điện Thoại")
                                                            {
                                                                entries1.add(d);
                                                              indexarr.add(true);
                                                              indexcolor.add(Colors.white);
                                                              count1+=1;
                                                            }
                                                            if(dropdownValue=="Máy Tính")
                                                            {
                                                                entries2.add(d);
                                                              indexarr.add(true);
                                                              indexcolor.add(Colors.white);
                                                              count2+=1;
                                                            }
                                                            if(dropdownValue=="Đồng Hồ")
                                                            {
                                                                entries3.add(d);
                                                              indexarr.add(true);
                                                              indexcolor.add(Colors.white);
                                                              count3+=1;
                                                            }
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

                                                            child:Row(children:[
                                                              if(entries[index].length>=3)
                                                                Icon(Icons.add),
                                                              if(entries[index].length<3)
                                                                Icon(Icons.calculate),

                                                            Text(entries[index]),

                                                            ]),
                                                            onPressed: (){
                                                              setState(() {
                                                                value="position "+index.toString()+" value "+entries[index];
                                                                if(dropdownValue=="Điện Thoại")
                                                               { for(int i=0;i<=count1;i++)
                                                                {
                                                                  if(i==index)
                                                                  {
                                                                    indexcolor[i]=Colors.lightBlueAccent;
                                                                    showDialog(context: context, builder: (BuildContext context){
                                                                      return AlertDialog(
                                                                        title: Text(value),
                                                                      );}
                                                                    );
                                                                  }
                                                                  else
                                                                  {
                                                                    indexcolor[i]=Colors.white;
                                                                  }
                                                                  }
                                                               }
                                                                if(dropdownValue=="Máy Tính")
                                                                { for(int i=0;i<=count2;i++)
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
                                                                }
                                                                if(dropdownValue=="Đồng Hồ")
                                                                { for(int i=0;i<=count3;i++)
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
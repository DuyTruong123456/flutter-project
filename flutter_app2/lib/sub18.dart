import 'package:flutter/material.dart';
import'main.dart';
import'submain.dart';
import'sub16.dart';
import'sub17.dart';
var barcodenumber1=0;
void main18() {

  runApp(MyApp18());

}

class MyApp18 extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends State<MyApp18 > {

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
                                                  height: 500,
                                                  padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                  child:  ListView.builder(
                                                      padding: const EdgeInsets.all(8),
                                                      itemCount: values.length,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        return Container(
                                                          height: 50,
                                                          child:ElevatedButton(

                                                            style: ButtonStyle(
                                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                                foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                                            ),
                                                            child: Text(values[index]),
                                                            onLongPress: (){
                                                              showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return SimpleDialog(
                                                                      title: Text('delete?'),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.all(Radius.circular(
                                                                              2.0))),

                                                                      children:[
                                                                        Row(
                                                                          children: [
                                                                            SimpleDialogOption(
                                                                              onPressed: (){
                                                                               setState(() {
                                                                                 barcodenumber1=int.parse(values[index]);
                                                                                 idcheck=valuesID[index];
                                                                                 print(barcodenumber1);
                                                                                 print(idcheck);
                                                                                  checkdata=1;

                                                                                  valuesID.remove(valuesID[index]);
                                                                                  values.remove(values[index]);

                                                                                  main16();
                                                                                 Navigator.pop(context);
                                                                               });
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
                                                              setState(() {

                                                              });
                                                            },
                                                          ),


                                                        );
                                                      }
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
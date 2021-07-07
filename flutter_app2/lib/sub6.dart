import 'package:flutter/material.dart';

void main6() {
  runApp(MyApp6());
}

class MyApp6 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp6> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String dropdownValue = 'Default';
  bool checkBoxValue=true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(appBar: AppBar(title:Text('New App')),
            body:Center(
            child: SafeArea(
            child:Scrollbar(
            child:SingleChildScrollView(
                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children:[Table(
                        border:TableBorder.all(
                          color:Colors.grey,
                          width: 4,
                          style:BorderStyle.solid,
                        ),
                        children:[
                          TableRow(
                              children: [

                                Container(
                                    height:25,
                                    child:ColoredBox(
                                      child :Text('  New Contact',style: TextStyle(color:Colors.white),),
                                      color:Colors.black38,
                                    )
                                )
                              ]
                          ),
                          TableRow(
                              children: [
                                Container(
                                    height:75,

                                    child:ColoredBox(
                                      color:Colors.black,
                                      child:Row(
                                        children: [
                                          Flexible(
                                              child: Container(
                                                color:Colors.white,
                                                height:50,
                                                padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                child:Text('  Mobile',style: TextStyle(color:Colors.black),),
                                              ),
                                              flex:3,
                                              fit:FlexFit.tight

                                          ),
                                          Spacer(
                                            flex:1,
                                          ),
                                          Flexible(
                                              child: Container(
                                                color:Colors.white60,
                                                height:50,

                                                child:TextFormField(
                                                  controller: myController1,
                                                  decoration: InputDecoration(

                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.orangeAccent, width: 3.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                                                  ),
                                                  labelText: 'Phone Number',

                                                ),
                                                ),
                                              ),
                                              flex:5,
                                              fit:FlexFit.tight
                                          ),
                                          Spacer(
                                            flex:1,
                                          ),
                                          Flexible(
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width:5.0,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                                child:ElevatedButton.icon(
                                                  label:Text(''),

                                                  icon:Icon(
                                                    Icons.clear_outlined,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                    foregroundColor:MaterialStateProperty.all<Color>(Colors.red),

                                                  ),
                                                  onPressed:(){
                                                    setState(() {
                                                      myController1.text='';
                                                    });
                                                  },
                                                ),
                                              ),
                                              flex:2,
                                              fit:FlexFit.loose
                                          ),
                                        ],
                                      ),

                                    )
                                )
                              ]
                          ),
                          TableRow(
                              children: [
                                Container(
                                    height:25,
                                    child:ColoredBox(
                                      child :Text('  Send Email',style: TextStyle(color:Colors.white),),
                                      color:Colors.black54,
                                    )
                                )
                              ]
                          ),
                          TableRow(
                              children: [
                                Container(
                                    height:75,
                                    child:ColoredBox(
                                      color:Colors.black,
                                      child:Row(
                                        children: [
                                          Flexible(
                                              child: Container(
                                                color:Colors.white,
                                                height:50,
                                                padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 10,top:20),
                                                child:Text('  Flexible',style: TextStyle(color:Colors.black),),
                                              ),
                                              flex:3,
                                              fit:FlexFit.tight

                                          ),
                                          Spacer(
                                            flex:1,
                                          ),
                                          Flexible(
                                              child: Container(
                                                color:Colors.white60,
                                                height:50,

                                                child:TextFormField(
                                                  controller: myController2,
                                                  decoration: InputDecoration(
                                                    focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.orangeAccent, width: 3.0),
                                                    ),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                                                    ),
                                                    labelText: 'Email Address'
                                                ),
                                                ),
                                              ),
                                              flex:5,
                                              fit:FlexFit.tight
                                          ),
                                          Spacer(
                                            flex:1,
                                          ),
                                          Flexible(
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width:5.0,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                                child:ElevatedButton.icon(
                                                  label:Text(''),

                                                  icon:Icon(
                                                    Icons.clear_outlined,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                    foregroundColor:MaterialStateProperty.all<Color>(Colors.red),

                                                  ),
                                                  onPressed:(){
                                                    setState(() {
                                                      myController2.text='';
                                                    });
                                                  },
                                                ),
                                              ),
                                              flex:2,
                                              fit:FlexFit.loose
                                          ),
                                        ],
                                      ),

                                    )
                                )
                              ]
                          ),
                          TableRow(
                              children: [
                                Container(
                                    height:25,
                                    child:ColoredBox(
                                      child :Text('  Other Information',style: TextStyle(color:Colors.white),),
                                      color:Colors.black38,
                                    )
                                )
                              ]
                          ),
                          TableRow(children:[
                            Container(
                              height:75,
                              color:Colors.black,
                              child:Row(
                                  children: [
                                    Flexible(
                                      child:Container(

                                          child:ColoredBox(
                                            child :Text('  Ring Tone',style: TextStyle(color:Colors.white),),
                                            color:Colors.black12,

                                          )
                                      ),
                                      flex:7,
                                      fit:FlexFit.tight,

                                    ),
                                    Flexible(
                                        flex:3,
                                        fit:FlexFit.loose,
                                        child:Container(
                                          padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 0,top:0),
                                          width: 100,
                                          height:45,
                                          color: Colors.white,

                                          child :DropdownButton<String>(
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
                                              });
                                            },
                                            items: <String>['Default', 'Tone1', 'Tone2', 'Tone3']
                                                .map<DropdownMenuItem<String>>((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),

                                        )
                                    )

                                  ]

                              ),
                            )
                          ]

                          ),
                          TableRow(children:[
                            Container(
                              height:50,
                              color:Colors.black,
                              child:Row(
                                  children: [
                                    Flexible(
                                      child:Container(

                                          child:ColoredBox(
                                            child :Text('  Send Calls Directly To Voice Mails',style: TextStyle(color:Colors.white),),
                                            color:Colors.black12,

                                          )
                                      ),
                                      flex:8,
                                      fit:FlexFit.tight,

                                    ),
                                    Flexible(
                                        flex:2,
                                        fit:FlexFit.loose,

                                        child:Container(
                                            padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 0,top:0),
                                            color: Colors.white,
                                            width: 20,
                                            height:20,
                                            child:Checkbox(value: checkBoxValue,onChanged:(bool newValue) {
                                              setState(() {
                                                checkBoxValue = newValue;
                                              });
                                            }
                                            )
                                        )

                                    )
                                  ]

                              ),
                            )
                          ]

                          ),
                          TableRow(
                              children: [
                                Container(
                                    height:75,
                                    color:Colors.black,
                                    child:Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children:[ Container(
                                          width:200,
                                          child :ElevatedButton.icon(
                                              icon:Icon(
                                                Icons.add,
                                                color: Colors.green,
                                                size:40,
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                                  foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                              ),
                                              label:Text('More Info'),
                                              onPressed:(){}
                                          ),
                                          color:Colors.black12,
                                        )
                                        ]
                                    )
                                )
                              ]

                          ),
                          TableRow(children:[
                            Container(
                              height:70,
                              color:Colors.grey,
                              child:Row(
                                  children: [
                                    Flexible(

                                      child :ElevatedButton(

                                          style: ButtonStyle(
                                              backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                              foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                          ),
                                          child:Text('Save'),
                                          onPressed:(){}
                                      ),



                                      flex:4,
                                      fit:FlexFit.tight,

                                    ),
                                    Spacer(flex:3),
                                    Flexible(
                                      flex:4,
                                      fit:FlexFit.tight,


                                      child :ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                                              foregroundColor:MaterialStateProperty.all<Color>(Colors.black)
                                          ),
                                          child:Text('Discard change'),
                                          onPressed:(){}
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
    );
  }


}
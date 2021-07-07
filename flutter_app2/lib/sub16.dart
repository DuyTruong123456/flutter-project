import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'sub17.dart';
import 'sub18.dart';
List values=[];
List valuesID=[];
int idcheck;
int checkdata=0;
bool turn =true;
void main16() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'store.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      print(db.path);
      print('a');
      return db.execute(
        "CREATE TABLE dogs(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,barcode INTEGER)",
      );

    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );
  Future<void> dropDog() async {
    // Get a reference to the database.
    final Database db = await database;

    // Insert the Dog into the correct table. Also specify the
    // `conflictAlgorithm`. In this case, if the same dog is inserted
    // multiple times, it replaces the previous data.
    await db.execute("DROP TABLE dogs",
    );
  }
 //dropDog();
  Future<void> createDog() async {
    // Get a reference to the database.
    final Database db = await database;

    // Insert the Dog into the correct table. Also specify the
    // `conflictAlgorithm`. In this case, if the same dog is inserted
    // multiple times, it replaces the previous data.
    await db.execute("CREATE TABLE IF NOT EXISTS dogs(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,barcode INTEGER)",
    );
  }
//createDog();
  Future<void> getvalues() async {
    values.clear();
    final Database db = await database;
    List list = await db.rawQuery('SELECT barcode FROM dogs');

    for (int i = 0; i < list.length; i++) {
      values.add(list[i]["barcode"].toString());
    }
    print(values);
    return values;
  }

  Future<void> getvaluesID() async {
valuesID.clear();
    final Database db = await database;
    List list = await db.rawQuery('SELECT id FROM dogs');

    for (int i = 0; i < list.length; i++) {
      valuesID.add(list[i]["id"]);
    }
    print(valuesID);
    return valuesID;
  }

  Future<void> insertDog(Dog dog) async {
    // Get a reference to the database.
    final Database db = await database;
    print(db.path);

    // Insert the Dog into the correct table. Also specify the
    // `conflictAlgorithm`. In this case, if the same dog is inserted
    // multiple times, it replaces the previous data.
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

  }

  Future<List<Dog>> dogs() async {
    // Get a reference to the database.
    final Database db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Dog(
        id: maps[i]['id'],
        barcode: maps[i]['barcode'],

      );
    });
  }

  Future<void> updateDog(Dog dog) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Dog.
    await db.update(
      'dogs',
      dog.toMap(),
      // Ensure that the Dog has a matching id.
      where: "barcode = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [dog.barcode],
    );
  }

  Future<void> deleteDog(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: "barcode = ? and id=?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [barcodenumber1,idcheck],
    );
  }

  var fido = Dog(

    barcode: barcodenumber,

);
  var fidodelete=Dog(

    barcode:barcodenumber1,
  );
  // Insert a dog into the database.
  if(barcodenumber>0&&checkdata==0)
  {
    await insertDog(fido);

  }



  // Print the list of dogs (only Fido for now).
//  print(await dogs());

  // Update Fido's age and save it to the database.

 // await updateDog(fido);

  // Print Fido's updated information.


  // Delete Fido from the database.
  //idcheck=4;
  //checkdata=1;
  //barcodenumber1=1;
 if(checkdata==1)
  {
    deleteDog(fidodelete.barcode);
  }
  // Print the list of dogs (empty).
  print(await dogs());
 getvalues();
 getvaluesID();
}

class Dog {
  final int barcode;
  final int id;

  Dog({this.barcode,this.id});

  Map<String, dynamic> toMap() {
    return {
      'barcode': barcode,

    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {

    return 'Dog{id:$id,barcode: $barcode}';
  }
}

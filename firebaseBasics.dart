Dedendency
----------------
cloud_firestore: ^3.1.0


Import file
-------------
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Write main() as below
--------------------------
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


Writing data to firestore
-------------------------
FirebaseFirestore.instance.collection('students').add(Data).then((result){
   //
}).catchError((erro){
   //
});


CollectionReference studentsCollection = FirebaseFirestore.instance.collection('students');

await studentsCollection.add({
  'name' : 'Rahul',
	'age' : 21,
	'percentage' : 54.81
});


// Example program
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Test extends StatelessWidget {
  //
  final CollectionReference studentsCollection =
      FirebaseFirestore.instance.collection('students');

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //
      body: Center(
        child: ElevatedButton(
          child: Text('Add Data'),
          onPressed: addData,
        ),
      ),
    );
  }

  void addData() async {
    await studentsCollection.add({
      'name': 'Rohit',
      'age': 24,
      'percentage': 74.5,
      'email_Id': 'rohitsharma@gmail.com',
    });
  }
}


studentsCollection.get()

studentsCollection.snapshots()












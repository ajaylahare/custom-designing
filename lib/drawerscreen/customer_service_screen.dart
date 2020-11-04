import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourCustomerServiceScreen extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return StreamBuilder(
  //       stream: Firestore.instance
  //           .collection('slider/')
  //           .snapshots(),//FirebaseAuth.instance.onAuthStateChanged,
  //       builder: (ctx, usersnapshot) {
  //         if (usersnapshot.hasData)
  //           return Scaffold(
  //             appBar: AppBar(
  //               centerTitle: true,
  //               title: Text('yourService screen'),
  //             ),
  //             body: Center(
  //               child: Text('how may i help u'),
  //             ),
  //           );
  //        // return AuthScreen();
  //       });
  // }
   Widget build(BuildContext context) {
    var wdt = MediaQuery.of(context).size.width;
    var ps = Colors.black87;
    var ac = Colors.grey.shade300;
    var hgt = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Service"),
        backgroundColor: ps,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: hgt / 20, horizontal: wdt / 20),
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade600,
              // child: ,
            )
          ],
        ),
      ),
    );
  } 
}

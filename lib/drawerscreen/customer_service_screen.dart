import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourCustomerServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance
            .collection('slider/')
            .snapshots(),//FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, usersnapshot) {
          if (usersnapshot.hasData)
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('yourService screen'),
              ),
              body: Center(
                child: Text('how may i help u'),
              ),
            );
         // return AuthScreen();
        });
  }
}

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:Firestore.instance
            .collection('slider/')
            .snapshots(),// FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, usersnapshot) {
          if (usersnapshot.hasData)
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('your orders'),
              ),
              body: Center(
                child: Text('No orders Yet ,pls do some orders'),
              ),
            );
       //   return AuthScreen();
        });
  }
}

import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../auth/auth_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourAccountScreen extends StatelessWidget {
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
                title: Text('your account'),
              ),
              body: Center(
                child: Text('yours account details  '),
              ),
            );
         // return AuthScreen();
        });
  }
}

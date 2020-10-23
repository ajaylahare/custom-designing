import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourSettingScreen extends StatelessWidget {
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
                title: Text('your setting'),
              ),
              body: Center(
                child: Text('setting'),
              ),
            );
          //return AuthScreen();
        });
  }
}

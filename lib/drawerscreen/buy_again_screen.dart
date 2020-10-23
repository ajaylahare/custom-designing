import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class YourBuyAgainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance
            .collection('slider/')
            .snapshots(),//FirebaseAuth.instance.onAuthStateChanged,
        // ignore: missing_return
        builder: (ctx, usersnapshot) {
          if (usersnapshot.hasData)
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('your buy again'),
              ),
              body: Center(
                child: Text('No buyied Yet ,pls buy something'),
              ),
            );
          return Text('data');
        });
  }
}

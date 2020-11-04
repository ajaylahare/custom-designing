import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class YourWishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:Firestore.instance
            .collection('slider/')
            .snapshots(),
        // ignore: missing_return
        builder: (ctx, usersnapshot) {
          if (usersnapshot.hasData)
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('your wishlist'),
              ),
              body: Center(
                child: Text('No wishlist Yet ,pls add some wishlist'),
              ),
            );
          return Text('data');
        });
  }
}

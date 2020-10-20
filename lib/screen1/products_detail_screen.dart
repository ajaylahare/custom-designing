import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hardware/auth/auth_screen.dart';
import 'package:hardware/main.dart';
import 'package:hardware/screens2/services_info_reviews_screen.dart';

class ProductsDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'product',
        ),
        actions: [
          DropdownButton(
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            items: [
              DropdownMenuItem(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 8),
                      Text('logout'),
                    ],
                  ),
                ),
                value: 'logout',
              ),
            ],
            onChanged: (itemidentifier) {
              if (itemidentifier == 'logout') FirebaseAuth.instance.signOut();

              Navigator.popUntil(context, ModalRoute.withName("/"));
              // Navigator.of(context).popAndPushNamed('/auth_screen');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Image.network('src'),
            ),
            
          ],
        ),
      ),
    );
  }
}

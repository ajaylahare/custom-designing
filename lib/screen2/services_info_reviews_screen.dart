import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ServicesInfoReviewscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'service info review',
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
              Navigator.popUntil(context,ModalRoute.withName("/"));
              
            },
            
          )
        ],
      ),
       body: Center(
      child: Text('you are in service info review list list screen'),
    ),
    );
  }
}
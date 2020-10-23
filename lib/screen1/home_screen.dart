
import 'package:flutter/material.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/home_item.dart';

import 'package:first_app/widgets/image_slider.dart';




class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'HARDWARE',
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
                // if (itemidentifier == 'logout') FirebaseAuth.instance.signOut();
                // Navigator.popUntil(context, ModalRoute.withName("/"));
                // Navigator.pushReplacementNamed(context, '/auth_screen');
              },
            )
          ],
        ),
        drawer: AppDrawer(),
        body: 
               
                 SingleChildScrollView(
                   
                                  child: Column(
                             children:<Widget>[ ImageSlider(),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              HomeItem(),
                              ]
                   ),
                 ),
               
               
            
          );
        
  }
}

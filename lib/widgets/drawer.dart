import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hardware/screens1/home_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        child: Column(
         
      children: <Widget>[
       
        InkWell(
          onTap:  (){
            Navigator.of(context).pushNamed('/auth_screen');
          },
          child: AppBar(
            title: Text('hello login'),
            automaticallyImplyLeading: false,
            
          ),
        ),
        Expanded(  
          
          child: Scrollbar(
                      child: ListView(children: [
         
        ListTile(
            leading: Icon(Icons.shop),
            title: Text('HOME'),
            onTap: (){
              Navigator.of(context).pushNamed('/Home_screen');
            },
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.category),
            title: Text('SHOP BY CATEGORY'),
            onTap: (){
              Navigator.of(context).pushNamed('/Shop_By_Category_screen');
            },
        ),
            Divider(),
        ListTile(
            leading: Icon(Icons.edit),
            title: Text('TODAY DEAL'),
            onTap: (){
              Navigator.of(context).pushNamed('/Todays_deal_screen');
            },
        ),
         Divider(),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('YOUR ORDERS'),
            onTap: (){
       
                Navigator.of(context).pushNamed('/your_order_screen');
            },
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.shop),
            title: Text('BUY AGAIN'),
            onTap: (){
              Navigator.of(context).pushNamed('/your_buy_again_screen');
            },
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.payment),
            title: Text('YOUR WISHLIST'),
            onTap: (){
             Navigator.of(context).pushNamed('/your_wishlist_screen');
            },
        ),
            Divider(),
        ListTile(
            leading: Icon(Icons.edit),
            title: Text('YOUR ACCOUNT'),
            onTap: (){
             Navigator.of(context).pushNamed('/your_account_screen');
            },
        ),
         Divider(),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('YOUR NOTIFICATIONS'),
            onTap: (){
           
               Navigator.of(context).pushNamed('/your_notify_screen');
            },
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text('SETTINGS'),
            onTap: (){
              Navigator.of(context).pushNamed('/setting_screen');
            },
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.payment),
            title: Text('CUSTOMER SERVICE'),
            onTap: (){
          Navigator.of(context).pushNamed('/your_customer_service_screen');
            },
        ),
            Divider(),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('LOGOUT'),
             onTap: (){
            //         //  FirebaseAuth.instance.signOut();
            //    // Navigator.popUntil(context, ModalRoute.withName("/"));
            },
        ),

        Divider(),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('search'),
             onTap: (){
            
           Navigator.of(context).pushNamed('/search');
            },
        ),
        ],),
          ))
      ],
    ));
  }
}

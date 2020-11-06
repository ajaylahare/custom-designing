
import 'dart:developer';
import 'dart:ui';

import 'package:first_app/screen1/category_to_all_item_screen.dart';
import 'package:first_app/screen3/designing.dart';

import 'package:first_app/screen3/colour_picker.dart';
import 'package:first_app/screen3/language_screen.dart';
import 'package:first_app/screen3/password%20change.dart';
import 'package:first_app/screen3/product_screen.dart';
import 'package:first_app/widgets/faltu.dart';


import 'package:flutter/material.dart';
import 'package:first_app/drawerscreen/buy_again_screen.dart';
import 'package:first_app/drawerscreen/customer_service_screen.dart';
import 'package:first_app/drawerscreen/setting_screen.dart';
import 'package:first_app/drawerscreen/shopbycategory.dart'; 

import 'package:first_app/drawerscreen/your%20account_screen.dart';
import 'package:first_app/drawerscreen/your_notifications_screen.dart';
import 'package:first_app/drawerscreen/your_orders._screen.dart';
import 'package:first_app/drawerscreen/your_wishlist_screen.dart';
import 'package:first_app/screen1/home_screen.dart';
import 'package:first_app/screen1/products_detail_screen.dart';

import 'package:first_app/search/search.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'drawerscreen/toaday_deal_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.teal,
          backgroundColor: Colors.white,
          accentColor: Colors.tealAccent,
          accentColorBrightness: Brightness.light,
          buttonTheme: ButtonTheme.of(context).copyWith(
              buttonColor: Colors.pink,
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
      home: StreamBuilder(
          stream: Firestore.instance
            .collection('slider/')
            .snapshots(),//FirebaseAuth.instance.onAuthStateChanged,
           builder: (ctx, usersnapshot) {
            if (usersnapshot.hasData) 
          return  HomeScreen();
            return Scaffold();//AuthScreen();
         }),
      routes: {
        '/setting_screen': (context) => SettingsPage(),
        '/search': (context) => Search(),
        '/your_customer_service_screen': (context) =>YourCustomerServiceScreen(),
        '/your_buy_again_screen': (context) => YourBuyAgainScreen(),
        '/your_account_screen': (context) => EditProfilePage(),
        '/your_wishlist_screen': (context) => YourWishlistScreen(),
        '/your_notify_screen': (context) => YourNotificationScreen(),
        '/your_order_screen': (context) => FoodOrderPage(),
        '/Todays_deal_screen': (context) => TodaysDealScreen(),
        '/Shop_By_Category_screen': (context) => ShopByCategory(),
        '/Home_screen': (context) => HomeScreen(),
       // '/auth_screen': (context) => AuthScreen(),
       // '/tab_screen': (context) => TabsScreen(),
        '/products_screen': (context) => ProductsDetailScreen(),
        
        '/product_screen': (context) => ProductScreen('','',''),
        '/colourpicker_screen': (context) => ColourPicker(),
        '/categorytoallitem_screen': (context) => CategoryToAllItem('',),
        '/designingScreen': (context) => DesigningScreen('','',''),
       '/faltuscreen': (context) => A(),
       '/changepass_screen': (context) => ChangePass(true),
        '/language_screen': (context) => LanguageScreen(),
      },
    );
  }
}

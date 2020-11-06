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
          CartIconWithBadge(),
        ],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          ImageSlider(),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          HomeItem(),
        ]),
      ),
    );
  }
}

class CartIconWithBadge extends StatelessWidget {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
          height: 50,
          width: 50,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
        ),
        counter != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}

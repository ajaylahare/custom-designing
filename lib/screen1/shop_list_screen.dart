import 'package:flutter/material.dart';
class ShopListScreen extends StatelessWidget {
  void select(BuildContext ctx) {
    Navigator.pushNamed(ctx,'/products_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
      Center(
      child: Text('you are in shop list screen'),
    ),
    RaisedButton(child: Text('shop list'),onPressed: ()=>select(context),textColor: Colors.white,color: Colors.blue,),
    ],);
  }
}
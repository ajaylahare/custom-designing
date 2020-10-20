import 'package:flutter/material.dart';
class ServicesDetailScreen extends StatelessWidget {
  void select(BuildContext ctx) {
    Navigator.pushNamed(ctx,'/service_review_info_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
      Center(
      child: Text('you are in service detail  screen'),
    ),
    RaisedButton(child: Text('service detail '),onPressed: ()=>select(context),textColor: Colors.white,color: Colors.blue,),
    ],);
  }
}
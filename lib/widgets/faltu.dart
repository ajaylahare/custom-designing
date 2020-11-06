import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class A extends StatelessWidget {
  A({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
        drawer: Drawer(),
// No appbar provided to the Scaffold, only a body with a
// CustomScrollView.
        body:  CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 30,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
            expandedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title:Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 30,
              width: double.infinity,
              color: Colors.white,
            ),
          ), 
              
              ),
            
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Text(
                  '{loadedProduct.price}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Text(
                    'loadedProduct.description',
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
                SizedBox(height: 800,),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

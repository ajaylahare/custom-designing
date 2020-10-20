import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
    final String title;
  final String id;

  final String imageUrl;
  CategoryItem(this.title, this.id, this.imageUrl);
 void select(BuildContext ctx) {
    Navigator.pushNamed(ctx,'/tab_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: InkWell(
        onTap:() => select(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          //margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
               Expanded(
                            child:
                             ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                      height: 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
               ),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                
              overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

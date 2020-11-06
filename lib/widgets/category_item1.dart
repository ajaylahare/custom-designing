
// import 'package:first_app/screen3/product_screen.dart';
import 'package:first_app/screen3/product_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem1 extends StatelessWidget {
    final String title;
  final String id;

  final String imageUrl;
  CategoryItem1(this.title, this.id, this.imageUrl);
 void select(BuildContext ctx) {
    Navigator.push(
                  ctx,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(title,imageUrl,'\$10'),
                  ),
                );
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
// class CartIconWithBadge extends StatelessWidget {
//   int counter = 3;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Card(
//           shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(60)),
//                   child: IconButton(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.black,
//               ),
//               onPressed: () {}),
//         ),
//         counter != 0
//             ? Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   padding: EdgeInsets.all(2),
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   constraints: BoxConstraints(
//                     minWidth: 14,
//                     minHeight: 14,
//                   ),
//                   child: Text(
//                     '$counter',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 8,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               )
//             : Container()
//       ],
//     );
//   }
// }
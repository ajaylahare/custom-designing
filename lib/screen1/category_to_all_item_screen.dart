
import 'package:first_app/widgets/category_item1.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryToAllItem extends StatefulWidget {
 
  final String name;


  

  CategoryToAllItem(this.name,);
  @override
  _CategoryToAllItemState createState() => _CategoryToAllItemState();
}

class _CategoryToAllItemState extends State<CategoryToAllItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'service info review',
        ),
        actions: [
              CartIconWithBadge(),
          ],),
      body: 
         Container(height: 1000,
           child: FutureBuilder(
            future: () async {
              // FirebaseAuth auth = FirebaseAuth.instance;
              // FirebaseUser user = await auth.currentUser();
              // String uid = user.uid.toString();
              // return uid;
            }(),
            builder: (ctx, futuresnapshot) {
              if (futuresnapshot.connectionState == ConnectionState.waiting)
                return Center(
                  child: CircularProgressIndicator(),
                );
              return StreamBuilder(
                stream: Firestore.instance
                    .collection('category_to_all_item/Mw0l4oHPbNUHiXMBMZJB/${widget.name}/')
                    .snapshots(),
                builder: (ctx, chatsnaphot) {
                  if (chatsnaphot.connectionState == ConnectionState.waiting)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  final chatdocs = chatsnaphot.data.documents;
                          
                  return 
                     
                           
                             SingleChildScrollView(
                                                    child: Container(
                                child:GridView.builder(
                                  // physics: NeverScrollableScrollPhysics(),
                                  itemCount: chatdocs.length,
                                  itemBuilder: (ctx, index) => CategoryItem1(
                                    
                                    chatdocs[index]['text'],
                                    chatdocs[index]['userid'],
                                    chatdocs[index]['userimage'],
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 1 / 1,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                ),
                                height: 576,
                              ),
                          
                           );
                        
                      //]//,
                    
                  
                },
              );
            },
        ),
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
              
                                  borderRadius: BorderRadius.circular(60),),
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
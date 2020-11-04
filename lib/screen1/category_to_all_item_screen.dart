
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
        ),),
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
                     
                        // height: chatdocs.length*(501.0),
                        // ListTile(contentPadding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        //     leading: Icon(Icons.shopping_bag),
                        //     title: Text('${widget.link}'),
                        //     trailing: Icon(Icons.add),
                        //     onTap: () {}),

                        
                           
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

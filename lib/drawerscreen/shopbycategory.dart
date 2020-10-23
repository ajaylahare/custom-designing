import 'package:first_app/widgets/category_item.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ShopByCategory extends StatefulWidget {
  @override
  _ShopByCategoryState createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  AppBar(
          centerTitle: true,
          title: Text(
            'HARDWARE',
          ),),
          drawer: AppDrawer(),
          body: 
                      
                
                                FutureBuilder(
                                                future: () async {
                                                  // FirebaseAuth auth = FirebaseAuth.instance;
                                                  // FirebaseUser user = await auth.currentUser();
                                                  // String uid = user.uid.toString();
                                                  // return uid;
                                                }(),
                                                builder: (ctx, futuresnapshot) {
                                                  if (futuresnapshot.connectionState ==
                                                      ConnectionState.waiting)
                                                    return Center(
                                                      child: CircularProgressIndicator(),
                                                    );
                                                  return StreamBuilder(
                                                      stream: Firestore.instance
                                                          .collection(
                                                              'slider/')
                                                          .snapshots(),
                                                      builder: (ctx, chatsnaphot) {
                                                        if (chatsnaphot.connectionState ==
                                                            ConnectionState.waiting)
                                                          return Center(
                                                            child: CircularProgressIndicator(),
                                                          );
                                                        final chatdocs = chatsnaphot.data.documents;
                                                        return GridView.builder(
                                                         // physics: NeverScrollableScrollPhysics(),
                                                          itemCount: chatdocs.length,
                                                          itemBuilder: (ctx, index) => CategoryItem(
                                                            chatdocs[index]['text'],
                                                            chatdocs[index]['userId'],
                                                            chatdocs[index]['userimage'],
                                                          ),
                                                          gridDelegate:
                                                              SliverGridDelegateWithMaxCrossAxisExtent(
                                                            maxCrossAxisExtent: 200,
                                                            childAspectRatio: 1 / 1,
                                                            crossAxisSpacing: 10,
                                                            mainAxisSpacing: 10,
                                                          ),
                                                        );
                                                        
                                                        
                                                      });
                                                },
                                        
                  
        
      ),
                
     
          
    );
  }
}
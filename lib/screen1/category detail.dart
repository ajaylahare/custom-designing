import 'package:first_app/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryDetail extends StatefulWidget {
  final String link;
  CategoryDetail(this.link);
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
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
                .collection('category/uJSO6OwZ23vfeWjfiMiu/${widget.link}/')
                .snapshots(),
            builder: (ctx, chatsnaphot) {
              if (chatsnaphot.connectionState == ConnectionState.waiting)
                return Center(
                  child: CircularProgressIndicator(),
                );
              final chatdocs = chatsnaphot.data.documents;

              return Column(
                children: [
                  // height: chatdocs.length*(501.0),
                  ListTile(
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    leading: IconButton(icon: Icon(Icons.arrow_back),onPressed:(){ Navigator.of(context).pop();},),
                    title: Text('${widget.link}'),
                    trailing: Icon(Icons.remove),
                    onTap: () {},
                  ),

                  SingleChildScrollView(
                    child: Container(
                      child: GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: chatdocs.length,
                        itemBuilder: (ctx, index) => CategoryItem(
                          chatdocs[index]['name'],
                          chatdocs[index]['text'],
                          chatdocs[index]['userId'],
                          chatdocs[index]['userimage'],
                        ),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 1 / 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                      height: 576,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

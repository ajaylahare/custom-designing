import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    var title = "Image Slider Widget";
    return FutureBuilder(future: () async {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseUser user = await auth.currentUser();
      String uid = user.uid.toString();
      return uid;
    }(), builder: (ctx, futuresnapshot) {
      if (futuresnapshot.connectionState == ConnectionState.waiting)
        return Center(
          child: CircularProgressIndicator(),
        );
      return StreamBuilder(
        stream: Firestore.instance
            .collection('home/${futuresnapshot.data}/slider')
            .snapshots(),
        builder: (ctx, chatsnaphot) {
          if (chatsnaphot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          final chatdocs = chatsnaphot.data.documents;
          return Container(
              margin: EdgeInsets.symmetric(vertical: 1.0),
              height: 200.0,
              child: CarouselSlider.builder(
                  itemCount: chatdocs.length,
                  itemBuilder: (ctx, index) =>  Container(
         child: Image.network(chatdocs[index]['imageurl'],),
         
                  ),
                  options: CarouselOptions(
         aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 2),
      autoPlayAnimationDuration: Duration(milliseconds: 2000),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
        ),));
        },
      );
    });
  }
}

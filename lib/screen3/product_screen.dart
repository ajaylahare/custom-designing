import 'package:first_app/screen3/designing.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductScreen extends StatefulWidget {
  final String url;
  final String text;
  final String price;
  ProductScreen(this.text, this.url, this.price);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          widget.text,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              widget.price,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
      body: Card(
        elevation: 5,
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Card(
                elevation: 49,
                color: Colors.black,
                margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Container(
                  color: Colors.lightGreen,
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    widget.url,
                    height: 250,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.price,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              //Rating(),
              SmoothStarRating(
                borderColor: Colors.green,
                color: Colors.green,
                rating: rating,
                isReadOnly: false,
                size: 60,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 1.0,
                onRated: (value) {
                  //  print("rating value -> $value");
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
              SizedBox(
                height: 10,
              ),
              
              FlatButton(
                minWidth: double.infinity,
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(10.0),
                splashColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DesigningScreen(
                          widget.url, widget.text, widget.price),
                    ),
                  );
                },
                child: Text(
                  "Start Designing",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'data',
                ),
                height: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

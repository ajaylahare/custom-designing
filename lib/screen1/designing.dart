import 'package:first_app/screen3/colour_picker.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DesigningScreen extends StatefulWidget {
  final String url;
  final String text;
  final String price;
  DesigningScreen(this.url, this.text, this.price);
  @override
  _DesigningScreenState createState() => _DesigningScreenState();
}

class _DesigningScreenState extends State<DesigningScreen> {
  List<String> selectedSizes = <String>[];
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
              Container(
                height: 180,
                color: Colors.white,
                margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.5,
                    ),
                    Row(
                      children: [
                        FlatButton(
                          height: 50,
                          color: Colors.white,
                          minWidth: 170,
                          onPressed: () {},
                          child: Text(
                            'front',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          ),
                        ),
                        FlatButton(
                          height: 50,
                          minWidth: 170,
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'back',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        FlatButton(
                          height: 50,
                          minWidth: 175,
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'left shoulder',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          ),
                        ),
                        FlatButton(
                          height: 50,
                          minWidth: 175,
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'right shoulder',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        FlatButton(
                          height: 50,
                          minWidth: 175,
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'left sleeve',
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        FlatButton(
                          height: 50,
                          minWidth: 175,
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'right sleeve',
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                  ],
                ),
              ),
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
              Row(
                children: <Widget>[
                  Checkbox(
                      value: selectedSizes.contains('XS'),
                      onChanged: (value) => changeSelectedSize('XS')),
                  Text(
                    'XS',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('S'),
                      onChanged: (value) => changeSelectedSize('S')),
                  Text(
                    'S',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('M'),
                      onChanged: (value) => changeSelectedSize('M')),
                  Text(
                    'M',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('L'),
                      onChanged: (value) => changeSelectedSize('L')),
                  Text(
                    'L',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('XL'),
                      onChanged: (value) => changeSelectedSize('XL')),
                  Text(
                    'XL',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('XXL'),
                      onChanged: (value) => changeSelectedSize('XXL')),
                  Text(
                    'XXL',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                      value: selectedSizes.contains('28'),
                      onChanged: (value) => changeSelectedSize('28')),
                  Text(
                    '28',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('30'),
                      onChanged: (value) => changeSelectedSize('30')),
                  Text(
                    '30',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('32'),
                      onChanged: (value) => changeSelectedSize('32')),
                  Text(
                    '32',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('34'),
                      onChanged: (value) => changeSelectedSize('34')),
                  Text(
                    '34',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('36'),
                      onChanged: (value) => changeSelectedSize('36')),
                  Text(
                    '36',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('38'),
                      onChanged: (value) => changeSelectedSize('38')),
                  Text(
                    '38',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                      value: selectedSizes.contains('40'),
                      onChanged: (value) => changeSelectedSize('40')),
                  Text(
                    '40',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('42'),
                      onChanged: (value) => changeSelectedSize('42')),
                  Text(
                    '42',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('44'),
                      onChanged: (value) => changeSelectedSize('44')),
                  Text(
                    '44',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('46'),
                      onChanged: (value) => changeSelectedSize('46')),
                  Text(
                    '46',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('48'),
                      onChanged: (value) => changeSelectedSize('48')),
                  Text(
                    '48',
                    style: TextStyle(fontSize: 8),
                  ),
                  Checkbox(
                      value: selectedSizes.contains('50'),
                      onChanged: (value) => changeSelectedSize('50')),
                  Text(
                    '50',
                    style: TextStyle(fontSize: 8),
                  ),
                ],
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
              Container(
                child: ColourPicker(),
                height: 450,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 89,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'add design',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 89,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'add text',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 89,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'add clipart',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'upload image',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'add design',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      color: Colors.teal,
                      height: 70,
                      width: 88,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
                        child: Text(
                          'add design',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeSelectedSize(String size) {
    if (selectedSizes.contains(size)) {
      setState(() {
        selectedSizes.remove(size);
        print(selectedSizes);
      });
    } else {
      setState(() {
        selectedSizes.insert(0, size);
        print(selectedSizes);
      });
    }
  }
}

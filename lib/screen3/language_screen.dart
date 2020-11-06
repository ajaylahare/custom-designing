import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool _value = true;

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
          'Language',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
            child: Icon(
              Icons.save,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Choose your language',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: ListTile(
              leading: InkWell(
                onTap: () {
                  setState(() {
                    _value = !_value;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _value ? Colors.blue : Colors.grey),
                  child: _value
                      ? Icon(
                          Icons.check,
                          size: 30.0,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.check_box_outline_blank,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                ),
              ),
              title: Text('English'),
            ),
          ),
          SizedBox(height: 10),
          Container(margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            height: 200,
            color: Colors.grey[100],
            child: Text(
              'jsdhfjhsdfdkv j jhf jfh jf sxn  hdsjsv g dff  fg  gsf h  jdhg jdfh jkdlafjh sdfuahfshskjf jvb g g  ghfghg fhdg  g dgfsgf  dgf sdhf sd gf',
              style: TextStyle(fontSize: 25, color: Colors.grey[600]),
            ),
          )
        ],
      ),
    );
  }
}

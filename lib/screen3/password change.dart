import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  ChangePass(
    this.isloading,
  );
  bool isloading;
  // final void Function(
  //   String password,
  //   bool islogin,
  //   BuildContext ctx,
  // ) submitfn;

  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  final _formKey = GlobalKey<FormState>();
  var _islogin = true;
  var _userpassword = '';

  _trysubmit() {
    final _isvalid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    // if(!_islogin)
    // {Scaffold.of(context).showSnackBar(SnackBar(content: Text('pls pick an image'),backgroundColor: Theme.of(context).errorColor,),);
    //   return;
  }
  //   if (_isvalid) _formKey.currentState.save();
  //   widget.submitfn(
  //     _userpassword.trim(),
  //     _islogin,
  //     context,
  //   );
  //   widget.isloading;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    key: ValueKey('new password'),
                    validator: (value) {
                      if (value.isEmpty || value.length < 7)
                        return 'pw must be atleast 7 char';
                      return null;
                    },
                    decoration: InputDecoration(labelText: ' new pasword'),
                    obscureText: true,
                    onSaved: (value) {
                      _userpassword = value;
                    },
                  ),
                  TextFormField(
                    key: ValueKey(' confirm password'),
                    validator: (value) {
                      if (value.isEmpty || value.length < 7)
                        return 'pw must be atleast 7 char';
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'confirm pasword'),
                    obscureText: true,
                    onSaved: (value) {
                      _userpassword = value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // if (widget.isloading) CircularProgressIndicator(),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                          child: Text(
                        'submit',
                      )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

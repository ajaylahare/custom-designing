import 'dart:io';

import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(this.submitfn,this.isloading);
  bool isloading;
  final void Function(
    String email,
    String username,
    String password,
    bool islogin,
    BuildContext ctx,
  ) submitfn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  var _islogin = true;
  var _useremail = '';
  var _username = '';
  var _userpassword = '';
 

  _trysubmit() {
    final _isvalid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    // if(!_islogin)
    // {Scaffold.of(context).showSnackBar(SnackBar(content: Text('pls pick an image'),backgroundColor: Theme.of(context).errorColor,),);
    //   return; 

    // }
     if (_isvalid) _formKey.currentState.save();
    widget.submitfn(
      _useremail.trim(),
      _username.trim(),
      _userpassword.trim(),
      _islogin,
      context,
    );
    widget.isloading;
  }

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
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value.isEmpty || !value.contains('@'))
                        return 'please enter a valid email addres';
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email Address'),
                    onSaved: (value) {
                      _useremail = value;
                    },
                  ),
                  if (!_islogin)
                    TextFormField(
                      key: ValueKey('username'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4)
                          return 'uer name atleat 4 char';
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'User Name'),
                      onSaved: (value) {
                        _username = value;
                      },
                    ),
                  TextFormField(
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.isEmpty || value.length < 7)
                        return 'pw must be atleast 7 char';
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'pasword'),
                    obscureText: true,
                    onSaved: (value) {
                      _userpassword = value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (widget.isloading) CircularProgressIndicator(),
                 if (!widget.isloading)
                    RaisedButton(
                      child: Text(_islogin ? 'log in' : 'signup'),
                      onPressed: _trysubmit,
                    ),
                 if (!widget.isloading)
                    FlatButton(
                      child: Text(_islogin
                          ? 'creat new account'
                          : 'i have already an account'),
                      onPressed: () {
                        setState(() {
                          _islogin = !_islogin;
                        });
                      },
                      textColor: Theme.of(context).primaryColor,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

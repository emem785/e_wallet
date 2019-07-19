import 'package:flutter/material.dart';
import './flex_page.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 186.0),
      child: Column(
        children: <Widget>[
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Text(
              'Create \nan account',
              style: TextStyle(fontSize: 60.0),
            ),
          )),
          Flexible(child: textInput()),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: FlatButton(
                child: Text('register',style: TextStyle(color: Colors.black45, fontSize: 24),),
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FlexPage()));},
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
              ),
              width: 282.0,
              height: 64.0,
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    ));
  }

  Widget textInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 32.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 32.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'password'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        child: Text('back'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
}
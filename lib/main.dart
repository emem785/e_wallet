import 'package:flutter/material.dart';
import './screens/flex_page.dart';
import './screens/LoginPage.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'travel app',
      home: LoginPage(),
      theme: ThemeData(fontFamily: 'Roboto_Condensed' ),
    ));



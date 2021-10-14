import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';
import 'loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.get('email');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email == null ? LoginScreen() : HomePage(),
  ));
}

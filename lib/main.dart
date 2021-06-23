import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_loak/auth/auth.dart';
import 'package:ruang_loak/auth/auth1.dart';
import 'package:ruang_loak/tree.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Auth(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ruang_Loak",
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: LoginPage(),
      ),
    );
  }
}


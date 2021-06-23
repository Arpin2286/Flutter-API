import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ruang_loak/Dashboard.dart';
import 'package:provider/provider.dart';
import 'auth/auth.dart';

class Tree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    if(user==null){
      LoginPage();
    }
    return Dashboard();
  }
}

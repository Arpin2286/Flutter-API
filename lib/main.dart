import 'package:flutter/material.dart';
import 'package:reqres/ui/users.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      initialRoute: UserPage.id,
      routes: {
        UserPage.id:(context)=>UserPage(),
        //Updateuser.id:(context)=>Updateuser()

      },
    );
  }
}
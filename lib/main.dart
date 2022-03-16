import 'package:flutter/material.dart';
import 'package:itujar_login/view_model/view_model.dart';
import 'package:provider/provider.dart';
import 'login.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<
        MyViewModel>(
      create: (context) =>MyViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sample login',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home:  login(),
      ),);
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:itujar_login/ui_screens/slider_screen.dart';
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
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home:  Splash(),
      ),);
  }
}
//
// class Splash2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 6,
//       navigateAfterSeconds: new login(),
//       //title: new Text('GeeksForGeeks',textScaleFactor: 2,),
//       image: new Image.asset("Assets/images/log.png"),
//       loadingText: Text("Loading"),
//       photoSize: 100.0,
//       loaderColor: Colors.blue,
//       backgroundColor: Colors.blue,
//     );
//   }
// }

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Intro()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue.shade900,
        child:Center(child: Image.asset("Assets/images/log.png" , height: 100,width: 200,)),
    );
  }
}

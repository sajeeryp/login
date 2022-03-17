import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import '../login.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
     // nameNextBtn: ('Next page'),
      nameSkipBtn: ("Skip now" ),
        colorDot:  const Color(0xFFB5C1CC),
        colorActiveDot:  const Color(0xff095fb8),
      renderNextBtn: Center(
        child: MaterialButton(
          child: Text('Next'),
          color: Colors.blue,
          height: 40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ), onPressed: () { onPressedDone; },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add( new Slide(
      centerWidget: Column(
        //shrinkWrap: true,
        children: <Widget>[
          Image.asset("Assets/images/intro1.png" , height: 450,width: double.infinity,),
          //Text("image2 placeholder fgyfghjghgchgcgcghgchcghgxgfhffcfgchgchgc",style :TextStyle( color: Colors.black,)),
        ],
      ),
      widgetTitle:Center(child: Image.asset("Assets/images/itujar_logo_slider.png" , height: 80,width: 150,)),
      description: "Create your iTujar Account in a minute.Enter your name and contact details",
      styleDescription: TextStyle( color: Colors.black,),
      //pathImage: "Assets/images/intro1.png",
     // widthImage: double.infinity,
      //heightImage: 400,
      backgroundColor: Colors.white,

    ));
    listSlides.add(
        new Slide(
          centerWidget: Column(
            //shrinkWrap: true,
            children: <Widget>[
              Image.asset("Assets/images/intro2.png" , height: 450,width: double.infinity,),
              //Text("image2 placeholder fgyfghjghgchgcgcghgchcghgxgfhffcfgchgchgc",style :TextStyle( color: Colors.black,)),
            ],
          ),
          widgetTitle:Center(child: Image.asset("Assets/images/itujar_logo_slider.png" , height: 80,width: 150,)),
          description: "After the successful registration login the iTujar account with your details, then choose the suitable plans.",
          styleDescription: TextStyle( color: Colors.black,),
          //pathImage: "Assets/images/intro2.png",
         // widthImage: double.infinity,
          //heightImage: 400,
          backgroundColor: Colors.white,
          //centerWidget: Text("Replace this with a custom widget", style: TextStyle(color: Colors.black)),

        ));
    listSlides.add(Slide(
      centerWidget: Column(
        //shrinkWrap: true,
        children: <Widget>[
          Image.asset("Assets/images/intro3.png" , height: 450,width: double.infinity,),
          //Text("image2 placeholder fgyfghjghgchgcgcghgchcghgxgfhffcfgchgchgc",style :TextStyle( color: Colors.black,)),
        ],
      ),
      widgetTitle:Center(child: Image.asset("Assets/images/itujar_logo_slider.png" , height: 80,width: 150,)),
      description: "Provide the Merchants details to iTujar buinsess to make ERP App With in a minute. ERP Solutions and configurations will make automatically, and grow your business with iTujar application",
      styleDescription: TextStyle( color: Colors.black,),
      //pathImage: "Assets/images/intro3.png",
      //widthImage: double.infinity,
      //heightImage: 400,
      backgroundColor: Colors.white,

    ));
  }
  onPressedDone() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const login()),
    );
  }
}

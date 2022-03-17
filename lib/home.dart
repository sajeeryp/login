import 'package:flutter/material.dart';
import 'package:itujar_login/ui_screens/toogle.dart';

class dash extends StatefulWidget {
  const dash({Key? key}) : super(key: key);

  @override
  _dashState createState() => _dashState();
}

class _dashState extends State<dash> {

  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff095fb8),
    appBar: AppBar(
      automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: const Color(0xff095fb8),
    toolbarHeight:MediaQuery.of(context).size.height* 25/100,
    title: Center(child: Image.asset("Assets/images/log.png" , height: 100,width: 200,)),

    ),
    body: Container(
      color: const Color(0xff095fb8),

      height: MediaQuery.of(context).size.height* 80/100,
      width:MediaQuery.of(context).size.width,


      child: Container(
        alignment: Alignment.topRight,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: const Color(0xF6FAF9FF),
        ),
        height: MediaQuery.of(context).size.height* 80/100,
        width:MediaQuery.of(context).size.width,


        child: Column(

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            Padding(padding: EdgeInsets.only(top: 20,bottom: 20,left: 20),
            child:AnimatedToggle(
              values: ['العربية', 'English'],
              onToggleCallback: (value) {
                setState(() {
                  _toggleValue = value;
                });
              },
              buttonColor: const Color(0xFF767676),
              backgroundColor: const Color(0xFFB5C1CC),
              textColor: const Color(0xFFFFFFFF),
            ),
            ),

                Padding(
                  padding: EdgeInsets.only(right: 33),
                  child: Text("Account",
                    style: const TextStyle(fontWeight: FontWeight.w400 , color: const Color(
                        0xff095fb8), fontSize: 27), ),
                ),
                Padding(padding: EdgeInsets.all(20),
                child: Image.asset("Assets/images/2.png" , height: 30,width: 30,)),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 5,left: 40,right :40),
              padding: EdgeInsets.only(left: 15,right: 15),

              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),

              clipBehavior: Clip.antiAliasWithSaveLayer,
              //width: double.infinity,
              height: 165,
              width: MediaQuery.of(context).size.height* 50/100,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Username",
                      style: TextStyle(fontWeight: FontWeight.w800 , color: Colors.black54, fontSize: 25), ),
                  ),
                   Text("User@itujar.com",
                      style: const TextStyle(fontWeight: FontWeight.w500 , color: Colors.grey, fontSize: 10),
                  ),
                  const Divider(
                    height: 35,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.event_note_outlined, size: 14,color: Colors.grey,),
                      SizedBox(width: 10,),

                      Text("Tax summary",
                        style: const TextStyle(fontWeight: FontWeight.w400 , color: Colors.black, fontSize: 14),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp, size: 14,color: Colors.grey,),
                    ],
                  ),


                  const Divider(
                    height: 35,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.lock_outline, size: 14,color: Colors.grey,),
                      SizedBox(width: 10,),

                      Text("Password Reset",
                        style: const TextStyle(fontWeight: FontWeight.w400 , color: Colors.black, fontSize: 14),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp, size: 14,color: Colors.grey,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center( child: Padding(padding: EdgeInsets.all(10),
            child: Text( " Active Plan details" , style: TextStyle( color: const Color(
                0xff8b8686) ,fontSize: 20 , fontWeight: FontWeight.w400),)),),

            Container(
              margin: EdgeInsets.only(left: 40,right: 40),
              height: 165,
                width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,

              ),
            )
            

          ],
        ),


      ),
    ),
        bottomNavigationBar: _navigationDrawer,
        floatingActionButton : Container(
          height:70 ,
          width: 70,
          decoration: BoxDecoration(
            color:
              Colors.blue.shade900,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon ( Icons.add , color: Colors.white,) ,
        ),


        // floatingActionButton: FloatingActionButton(
        //     backgroundColor: Colors.blue.shade900,
        //     child: Icon(Icons.add),
        //     onPressed: () {}),


        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked
    );
  }
}


Widget get _navigationDrawer {
  return Container(
    padding: EdgeInsets.only(top: 0),
    color: const Color(0xF6FAF9FF),

    height: 70.0,

    child:ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom:0.0),
        child: BottomAppBar(
            shape:  CircularNotchedRectangle(),
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(right: 0,left: 0),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(3),
                          child: Image.asset("Assets/images/4.png" , height: 30,width: 30,)),

                      Text("Company List",
                        style: const TextStyle(fontWeight: FontWeight.w400 , color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0,right: 0),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(3),
                          child: Image.asset("Assets/images/5.png" , height: 30,width: 30,)),

                      Text("Profile",
                        style: const TextStyle(fontWeight: FontWeight.w400 , color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            )),),),
  );
}


import 'package:flutter/material.dart';

class dash extends StatefulWidget {
  const dash({Key? key}) : super(key: key);

  @override
  _dashState createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xF6FAF9FF),
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
              topLeft: Radius.circular(30), topRight: Radius.circular(20)),
          color: const Color(0xF6FAF9FF),
        ),
        height: MediaQuery.of(context).size.height* 80/100,
        width:MediaQuery.of(context).size.width,


        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            Padding(padding: EdgeInsets.all(20),
            child:Image.asset("Assets/images/2.png" , height: 30,width: 30,),),

                Text("Account",
                  style: const TextStyle(fontWeight: FontWeight.w400 , color: const Color(
                      0xff1A2373), fontSize: 25), ),
                Padding(padding: EdgeInsets.all(20),
                child: Image.asset("Assets/images/2.png" , height: 30,width: 30,)),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 5,left: 0),
              padding: EdgeInsets.only(left: 15,right: 15),

              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),

              clipBehavior: Clip.antiAliasWithSaveLayer,
              //width: double.infinity,
              height: 110,
              width: 360,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Tax summary",
                        style: const TextStyle(fontWeight: FontWeight.w400 , color: Colors.black, fontSize: 14),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp, size: 14,color: Colors.grey,),
                    ],
                  ),
                ],
              ),


            ),
          ],
        ),


      ),
    ),
        bottomNavigationBar: _navigationDrawer,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue.shade900,
            child: Icon(Icons.add),
            onPressed: () {}),
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
            elevation: 30,
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


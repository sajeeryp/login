import 'package:flutter/material.dart';
import 'package:itujar_login/ui_screens/register.dart';
import 'package:sizer/sizer.dart';
class start_dis extends StatefulWidget {
  const start_dis({Key? key}) : super(key: key);

  @override
  State<start_dis> createState() => _start_disState();
}

class _start_disState extends State<start_dis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff095fb8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff095fb8),
        toolbarHeight:MediaQuery.of(context).size.height* 08/100,
        title: Container(
          child:
            Column(
              children: [
                Center(child: Image.asset("Assets/images/log.png" , height: MediaQuery.of(context).size.height* 010/100,width:MediaQuery.of(context).size.width * 020/100 ,)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),

                    color: const Color(0xff095fb8) ,
                  ),
                  height: 25,
                  child: Container(

                    width: double.infinity,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        color: const Color(0xffffffff),
                        border: Border.all(width: 0)
                    ),
                  ),
                ),
              ],
            ),
        ),

      ),
      body: Container
        (
        decoration: BoxDecoration(
          border: Border.all(width: 0),
            color: const Color(0xffffffff),
        ),

        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        child:
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0),

                color: const Color(0xff095fb8) ,
              ),
              height: 25,
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                  color: const Color(0xffffffff),
                  border: Border.all(width: 0)
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 5/100 ,
                  right: MediaQuery.of(context).size.width * 5/100,
              top: MediaQuery.of(context).size.height * 6/100),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border: Border.all(width: 0)
                ),
              child: Column(
                children: [
                  Center(
                    child:
                        Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff095fb8), borderRadius: BorderRadius.circular(10)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height* 5/100,
                          width: MediaQuery.of(context).size.width* 80/100,
                          child: FlatButton(
                            child: Text("Register"   , style: TextStyle(color: Colors.white, fontSize: 15),),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const register()),);},
                          ),
                        ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*3/100,),
                  Center(
                    child: Text("iTujar Business is Everything" , style: TextStyle( color: const Color(
                        0xff5c6392) , fontSize: MediaQuery.of(context).size.width * 5/100 , fontWeight: FontWeight.w500 )),
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height *2.5/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),Container(

                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),
                    ],
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height *2.5/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),Container(

                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),
                    ],
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height *2.5/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),Container(

                        height: MediaQuery.of(context).size.height* 20/100,
                        width: MediaQuery.of(context).size.width*40/100,
                        decoration: BoxDecoration(
                            color: Color(0xff6eee61),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(" "),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {

  List gender=["Male","Female","Other"];

  late String select;
  late String value;


  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff095fb8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff095fb8),
        toolbarHeight:MediaQuery.of(context).size.height* 08/100,
        title: Center(child: Image.asset("Assets/images/log.png" , height: MediaQuery.of(context).size.height* 010/100,width:MediaQuery.of(context).size.width * 020/100 ,)),
      ),
      body: Container
        (
        color: const Color(0xff095fb8),
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        child:
        Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 10/100 ,
              right: MediaQuery.of(context).size.width * 10/100,
              top: MediaQuery.of(context).size.height * 4/100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: const Color(0xF6FAF9FF),
          ),
          child: Column(
            children: [
              Center(
                  child:Text("Register" , style: TextStyle( color: const Color(
                      0xff095fb8), fontSize: MediaQuery.of(context).size.height *3/100 , fontWeight: FontWeight.w400) )
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 5/100, ),

                TextFormField(
                  cursorWidth: 100,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  obscureText: false,
                  //onSaved: (value) => username =value!,
                  validator: (value) =>
                  value!.isEmpty
                      ? "Please enter username"
                      : null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                ),
              SizedBox(height: MediaQuery.of(context).size.height* 3/100,),


                TextFormField(
                  cursorWidth: 100,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  obscureText: false,
                  //onSaved: (value) => username =value!,
                  validator: (value) =>
                  value!.isEmpty
                      ? "Please enter email"
                      : null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                ),

              SizedBox(height: MediaQuery.of(context).size.height* 3/100,),

                TextFormField(
                  cursorWidth: 100,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  obscureText: false,
                  //onSaved: (value) => username =value!,
                  validator: (value) =>
                  value!.isEmpty
                      ? "Please enter Mobile"
                      : null,
                  decoration: InputDecoration(
                    prefix: Container(
                      width: 20,
                      child: Row(
                        children: [
                          Text( "+36" , style: TextStyle(color: Colors.black),),
                          Icon( Icons.keyboard_arrow_down_outlined , color:  Colors.black,)
                        ],
                      ),
                    ),
                    suffixIcon: Icon( Icons.close),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Mobile Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              SizedBox(height: MediaQuery.of(context).size.height* 2/100,),
              Align(
                alignment : Alignment.centerLeft,
                child: Text(
                  " Gender" , style: TextStyle( fontSize: MediaQuery.of(context).size.height* 2/100),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.5/100,
              ),

              // Row(
              //   children: <Widget>[
              //     addRadioButton(0, 'Male'),
              //     addRadioButton(1, 'Female'),
              //     addRadioButton(2, 'Others'),
              //   ],
              // ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Radio(
              //       value: 0,
              //       groupValue: _radioValue1,
              //       onChanged: _handleRadioValueChange1,
              //     ),
              //     Text(
              //       'Carnivore',
              //       style: new TextStyle(fontSize: 16.0),
              //     ),
              //     Radio(
              //       value: 1,
              //       groupValue: _radioValue1,
              //       onChanged: _handleRadioValueChange1,
              //     ),
              //     Text(
              //       'Herbivore',
              //       style: new TextStyle(
              //         fontSize: 16.0,
              //       ),
              //     ),
              //     Radio(
              //       value: 2,
              //       groupValue: _radioValue1,
              //       onChanged: _handleRadioValueChange1,
              //     ),
              //     Text(
              //       'Omnivore',
              //       style: new TextStyle(fontSize: 16.0),
              //     ),
              //   ],
              // ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'Male';
                              id = 1;
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: new TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),),
                  ),


                  Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Female';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: new TextStyle(
                      fontSize: 17.0,
                    ),
                  ),

                  Radio(
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Others';
                        id = 3;
                      });
                    },
                  ),
                  Text(
                    'Others',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                ],
              ),


              SizedBox(height: MediaQuery.of(context).size.height*3/100,),



              TextFormField(
                cursorWidth: 100,
                keyboardType: TextInputType.text,
                autofocus: false,
                obscureText: false,
                //onSaved: (value) => username =value!,
                validator: (value) =>
                value!.isEmpty
                    ? "Please enter password"
                    : null,
                decoration: InputDecoration(
                  prefixIcon: Icon( Icons.lock_outline),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height* 3/100,),

              TextFormField(
                cursorWidth: 100,
                keyboardType: TextInputType.text,
                autofocus: false,
                obscureText: false,
                //onSaved: (value) => username =value!,
                validator: (value) =>
                value!.isEmpty
                    ? "Please enter password"
                    : null,
                decoration: InputDecoration(
                  prefixIcon: Icon( Icons.lock_outline),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Confirm password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height* 3/100,),

              TextFormField(
                cursorWidth: 100,
                keyboardType: TextInputType.text,
                autofocus: false,
                obscureText: false,
                //onSaved: (value) => username =value!,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Referral code (Optional)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height* 3/100,),

              Row(
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1 , color: Colors.blue),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Container(
                      margin: EdgeInsets.all( MediaQuery.of(context).size.width* 0.90/100),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3)
                      ),
                    ),
                  ),
                  Text("I Agree to the" , style: TextStyle( color: Colors.black , fontSize: MediaQuery.of(context).size.height *1.7/100)),
                  TextButton(onPressed: () {}, child: Text( "Terms of Use and Policies")),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
  // Row addRadioButton(int btnValue, String title) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: <Widget>[
  //       Radio(
  //         activeColor: Colors.black,
  //         value: gender[btnValue],
  //         groupValue: select,
  //         onChanged: (value){
  //           setState(() {
  //             print(value);
  //             select=value;
  //           });
  //         },
  //       ),
  //       Text(title)
  //     ],
  //   );
  // }
}




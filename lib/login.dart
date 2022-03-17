import 'package:flutter/material.dart';
import 'package:itujar_login/view_model/view_model.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'model/main_model.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}


void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Login failed'),

    ),
  );
}

class _loginState extends State<login> {
  late String username, password,Rescode;
  MyViewModel? vm = null;

  final formKey = new GlobalKey<FormState>();


  @override


  Widget build(BuildContext context) {
    vm = Provider.of<MyViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xff095fb8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff095fb8),
        toolbarHeight:MediaQuery.of(context).size.height* 25/100,
        title: Center(child: Image.asset("Assets/images/log.png" , height: 100,width: 200,)),

      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child:  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(20)),
                color: const Color(0xF6FAF9FF),
              ),
              height: MediaQuery.of(context).size.height* 75/100,
              width:MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      child: Text("Sign in",
                          style: const TextStyle(fontWeight: FontWeight.w400 , color: const Color(
                              0xff1A2373), fontSize: 22), ),
                      height: 50,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                    top: 10,bottom: 10,left: 33,right: 33,
                  ),
                    child:
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    obscureText: false,
                    onSaved: (value) => username =value!,
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

                      prefixIcon:Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).disabledColor,
                      ),
                    ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 33.0, right: 33.0, top: 10, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (value) => password =value!,
                      validator: (value) =>
                      value!.isEmpty
                          ? "Please enter password"
                          : null,

                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon:Icon(
                                Icons.lock_outline,
                            color: Theme.of(context).disabledColor,
                          ),

                      ),
                    ),
                  ),

            Padding(padding: EdgeInsets.only(
              top: 0,bottom: 10,left: 225,right: 0,
            ),
              child: TextButton(
              onPressed: () {
                print("Forget clicked");
              },
              child: const Text('forgot password', style: const TextStyle(fontStyle: FontStyle.italic ),),
              ),),
                  Container(
                    //padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 20),

                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(10)),

                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    //width: double.infinity,
                    height: 50,
                    width: 345,
                    child: FlatButton(
                      child: Text("Login"   , style: TextStyle(color: Colors.white, fontSize: 15),),
                     // color: Colors.transparent,
                    //   onPressed: () {
                    //
                    //   final form = formKey.currentState;
                    //
                    //   if (form!.validate()) {
                    //   form.save();
                    //   final Future<
                    //   Map<String, dynamic>> successfulMessage = vm!.login(username, password);
                    //   print("username" + username);
                    //   print("password" + password);
                    //
                    //   successfulMessage.then((response) async {
                    //   print("response :" + response.toString());
                    //
                    //   if (response['customerName']) {
                    //   sample user = response['user'];
                    //   print("user res" + response.toString());
                    //
                    //   sample login = response['user'];
                    //   print("ussssssssssssssssssssr" + user.data.toString());
                    //    print(response);
                    //    user.responseCode = Rescode as int? ;
                    //
                    //    print("ttttttttttttttttttttttttttttttttttttt"+user.responseCode.toString());
                    //    print("msg     "+user.message.toString());
                    //
                    //
                    // }
                    //   if (Rescode == 1) {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (_) => HomePage()));
                    //   }else
                    //     ( _showToast);
                    //   } );
                    //    };
                    //  },

                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const dash()),
                      );},

                    ),
                   )],
              ),
            ),

        ),
      ),
    );
  }
}

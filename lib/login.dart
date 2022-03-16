import 'package:flutter/material.dart';
import 'package:itujar_login/view_model/view_model.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';
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
  late String username, password,code;
  MyViewModel? vm = null;

  final formKey = new GlobalKey<FormState>();


  @override


  Widget build(BuildContext context) {
    vm = Provider.of<MyViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Login Page"),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(

          child: Center(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    height: 120,
                  ),
                ),

                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextFormField(
                            keyboardType: TextInputType.text,
                            autofocus: false,
                            onSaved: (value) => username = value!,
                            validator: (value) =>
                            value!.isEmpty
                            ? "Please enter username"
                               : null,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        labelText: 'Username',
                        hintText: 'Enter valid username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                              keyboardType: TextInputType.text,
                            autofocus: false,
                       onSaved: (value) => password = value!,
                       validator: (value) =>
                       value!.isEmpty
                        ? "Please enter password"
                         : null,


                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        labelText: 'Password',
                        hintText: 'Enter valid password'),
                  ),
                ),



                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.purple, borderRadius: BorderRadius.circular(30)),
                  child: RaisedButton(
                    onPressed: () {

                    final form = formKey.currentState;

                    if (form!.validate()) {
                    form.save();
                    final Future<
                    Map<String, dynamic>> successfulMessage = vm!.login(username, password);
                    print("username" + username);
                    print("password" + password);

                    successfulMessage.then((response) async {
                    print("response :" + response.toString());

                    if (response['status']) {
                    sample user = response['user'];
                    print("user res" + response.toString());

                    sample login = response['user'];
                    print("ussssssssssssssssssssr" + user.data.toString());
                     print(response);
                     user.responseCode = code as int? ;

                     print("ttttttttttttttttttttttttttttttttttttt"+user.responseCode.toString());
                     print("msg     "+user.message.toString());


                  }
                    if (code == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    }else
                      ( _showToast);
                    } );
                     };
                   },),
                 )],
            ),
          ),
        ),
      ),
    );
  }
}

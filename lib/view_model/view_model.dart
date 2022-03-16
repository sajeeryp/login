
import 'package:flutter/cupertino.dart';
import 'package:itujar_login/services/webservices.dart';

class MyViewModel extends ChangeNotifier {


  Future<Map<String, dynamic>> login(String username, String password) async
  {
    final results = await Webservice().login(username, password);

    return results;
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:itujar_login/model/main_model.dart';

class Webservice {

  Future<Map<String, dynamic>> login(String username, String password) async {
    var result;

    print(username);
    print(password);

    final Map<String, dynamic> loginData = {

      'userName': username,
      'password': password,

    };

    print(loginData.toString());

    final url = "https://api-dev.itujar.com/customer/login";
    final response = await http.post(Uri.parse(url),

      body: loginData,

    );
    print(response.statusCode);

    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;

      print("userData :" + userData.toString());
      sample authUser = sample.fromJson(userData);
      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {

      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }
}
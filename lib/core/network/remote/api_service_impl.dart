import 'dart:convert';

import 'package:getx_access_token_app/constants/constants_uri.dart';
import 'package:getx_access_token_app/core/models/login/LoginRequest.dart';
import 'package:getx_access_token_app/core/models/login/LoginResponse.dart';
import 'package:getx_access_token_app/core/network/remote/api_service.dart';
import 'package:http/http.dart' as httpClient;
class ApiServiceImpl extends ApiService{
  var header = {
    "Content-Type":"application/json"
  };
  @override
  Future<LoginResponse> login(LoginRequest request) async {
    LoginResponse loginResponse = LoginResponse();
   var url = Uri.parse(ConstantsUri.loginPath);
   var response = await httpClient.post(url, body: jsonEncode(request.toJson()),headers: header);
   if(response.statusCode == 200){
     loginResponse = LoginResponse.fromJson(
       jsonDecode(response.body)
     );
   }
   return loginResponse;
  }
}
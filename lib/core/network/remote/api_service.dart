import 'package:getx_access_token_app/core/models/login/LoginRequest.dart';
import 'package:getx_access_token_app/core/models/login/LoginResponse.dart';

abstract class ApiService {
  Future<LoginResponse> login(LoginRequest request);
}
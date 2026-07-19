import 'package:get_storage/get_storage.dart';

class TokenStorage {
  static final storage = GetStorage();
  static final _accessToken = "ACCESS_TOKEN";
  static final _refreshToken = "REFRESH_TOKEN";

  static void setToken(String token) {
    storage.write(_accessToken, token);
  }

  static String getToken() {
    return storage.read(_accessToken) ?? "";
  }

  static void setRefreshToken(String refresh) {
    storage.write(_refreshToken, refresh);
  }

  static String getRefreshToken() {
    return storage.read(_refreshToken) ?? "";
  }
  static void removeToken(){
    storage.remove(_refreshToken);
    storage.remove(_accessToken);
  }
}

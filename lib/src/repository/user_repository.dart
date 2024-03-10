import 'package:dio/dio.dart';
import 'package:random_user/src/model/user.dart';

class UserRepository {
  final String randomUserUrl = "https://randomuser.me/api/";

  Future<User> getUser() async {
    final res = await Dio().get(randomUserUrl);
    Map<String, dynamic> jsonData = res.data["results"][0];
    return User.fromJson(jsonData);
  }
}
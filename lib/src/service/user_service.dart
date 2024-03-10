import 'dart:developer';

import 'package:random_user/src/model/user.dart';
import 'package:random_user/src/repository/user_repository.dart';

class UserService {
  final UserRepository _userRepository = UserRepository();
  User? _user;

  User? get user => _user;

  Future<void> fetchUser() async {
    try {
      _user = await _userRepository.getUser();
    } catch (e, s) {
      log('Error fetching user: $e, $s');
    }
  }
}

import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../service/api_service.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _users = [];
  bool _isLoading = false;

  List<UserModel> get users => _users;
  bool get isLoading => _isLoading;

  Future<void> fetchUsers({int count = 5}) async {
    _isLoading = true;
    notifyListeners();

    _users = await ApiService().fetchRandomUsers(count);

    _isLoading = false;
    notifyListeners();
  }
}
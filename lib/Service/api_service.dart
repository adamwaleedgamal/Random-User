import 'package:dio/dio.dart';
import '../models/user_model.dart'; // Ensure this path is correct

class ApiService {
  final Dio _dio = Dio(); // Create Dio instance

  Future<List<UserModel>> fetchRandomUsers(int count) async {
    final response = await _dio.get('https://randomuser.me/api/?results=$count');

    if (response.statusCode == 200) {
      return UserModel.fromJsonList(response.data['results'] as List<dynamic>);
    } else {
      throw Exception('Failed to load users');
    }
  }
}
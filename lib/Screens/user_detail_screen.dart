import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/address_model.dart';

class UserDetailScreen extends StatelessWidget {
  final UserModel user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${user.firstName} ${user.lastName}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.picture),
            ),
            SizedBox(height: 16),
            Text('Name: ${user.title} ${user.firstName} ${user.lastName}', style: TextStyle(fontSize: 18)),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 16)),
            Text('Phone: ${user.phone}', style: TextStyle(fontSize: 16)),
            // Example address info (assuming you add address to UserModel)
            // Text('Address: ${user.address.street}, ${user.address.city}, ${user.address.state}, ${user.address.country}, ${user.address.postcode}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
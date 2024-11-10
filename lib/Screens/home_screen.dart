import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';
import '../widgets/user_card.dart';
import '../widgets/loading_indicator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Random Users'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent, // Custom app bar color
      ),
      body: Container(
        color: Colors.grey[100], // Light background color
        padding: const EdgeInsets.symmetric(vertical: 16.0), // Top and bottom padding
        child: userProvider.isLoading
            ? LoadingIndicator()
            : ListView.builder(
          itemCount: userProvider.users.length,
          itemBuilder: (context, index) {
            return UserCard(user: userProvider.users[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => userProvider.fetchUsers(count: 10),
        child: Icon(Icons.refresh),
        backgroundColor: Colors.blueAccent, // Custom button color
      ),
    );
  }
}
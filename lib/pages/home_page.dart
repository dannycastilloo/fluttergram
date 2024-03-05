import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_full_course/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.white,
        title: Text('5minuteflutter'),
        centerTitle: false,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(children: mockUsersFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.png',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text('Sarah Fernandez'),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}

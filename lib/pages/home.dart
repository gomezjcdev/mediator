// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final user = getUserInfo();
    notifyAdmin('admin@admin.com', 'New user: $user');
    notifyUser('user@email.com', 'Welcome $user');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pragma'),
      ),
      body: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  String getUserInfo() {
    print('::getUserInfo');
    return 'admin';
  }

  void notifyAdmin(email, message) {
    print('::sendMailAdmin: $message');
  }

  void notifyUser(email, message) {
    print('::sendMailUser: $message');
  }
}

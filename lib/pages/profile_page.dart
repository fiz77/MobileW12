import 'package:flutter/material.dart';
import '../locator.dart';
import '../controllers/auth_controller.dart';

class ProfilePage extends StatelessWidget {
  final controller = locator<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      body: Center(child: Text("User: ${controller.user}")),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:w12/pages/profile_page.dart';
import '../locator.dart';
import '../controllers/auth_controller.dart';
import '../widgets/counter_stream_widget.dart';

class DashboardPage extends StatelessWidget {
  final controller = locator<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard - ${controller.user}"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Stream (Reactive):"),
            SizedBox(height: 10),
            CounterStreamWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/buttons/primary_button.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(0.8),
        child: Column(
          children: [
            Container()
          ],
        ),
      ),
    );
  }
}

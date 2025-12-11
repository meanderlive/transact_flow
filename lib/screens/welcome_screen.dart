import 'package:flutter/material.dart';
import 'auth/auth_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              foregroundImage: AssetImage("assets/images/Transactflow.jpg"),
              radius: 40,
            ),
            SizedBox(height: 30),
            Text(
              'Welcome to TransactFlow',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Secure payments. Seamless experience.',
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AuthScreen()),
                  ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.black,
              ),
              child: Text('Get Started', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

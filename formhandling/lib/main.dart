import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.code),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email Address"),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                print("Email: $email");
                print("Password: $password");
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
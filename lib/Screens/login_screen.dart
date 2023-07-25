import 'package:flutter/material.dart';
import 'package:pronial/resources/auth_method.dart';
import 'package:pronial/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pronial',
          style: TextStyle(fontFamily: 'Cera Pro'),
        ),
        centerTitle: true,
        elevation: 1,
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or Join a meeting',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset(
              'assets/images/man-attending-video-conference.png',
            ),
          ),
          CustomButton(
            text: 'SignIn',
            onPressed: () async {
              bool res = await _authMethods.signInWithGoogle(context);
              if (res) {
                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, '/Home');
              }
            },
          ),
        ],
      ),
    );
  }
}

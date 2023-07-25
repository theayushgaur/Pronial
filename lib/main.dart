import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pronial/Screens/home_screen.dart';
import 'package:pronial/constants/colors.dart';

import 'Screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pronial',
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/Login': (context) => const LoginScreen(),
        '/Home': (context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

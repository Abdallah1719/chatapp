import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/pages/caht_page.dart';
import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugDisableShadows,
      routes: {
        'LoginPage': (context) => (const LoginPage()),
        'RegisterPage': (context) => (const RegisterPage()),
        'chatpage': (context) => (ChatPage()),
      },
      initialRoute: 'LoginPage',
    );
  }
}

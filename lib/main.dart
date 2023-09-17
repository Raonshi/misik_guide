import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:misik_guide/common/styles/theme.dart';
import 'package:misik_guide/firebase_options.dart';
import 'package:misik_guide/pages/auth/sign_in_page.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MiSik Guide",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: const SignInPage(),
    );
  }
}
